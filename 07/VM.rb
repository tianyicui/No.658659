#!/usr/bin/env ruby

vm_file = ARGV[0]
input = IO.readlines(vm_file)
asm_file = vm_file.gsub(/vm$/, 'asm')
out_io = open(asm_file, 'w')
output = ''

input.map! do |x|
  x.gsub!(/\/\/.*/, '')
  x.strip!
end
input.reject!(&:'empty?')

def parse_line(line)
  if %w[add sub neg eq gt lt and or not].include?(line) then
    return { :type => :arith, :op => line.to_sym }
  end
  split = line.split
  if split[0] == 'push' or split[0] == 'pop' then
    return { :type => split[0].to_sym,
             :segment => split[1].to_sym,
             :index => split[2].to_i }
  end
  raise NotImplementedError
end

def push_d_to_stack
  <<-END
  //^^ push_d_to_stack
  @SP
  A=M
  M=D
  @SP
  M=M+1
  //vv push_d_to_stack
  END
end

def pop_stack_to_d
  <<-END
  //^^ pop_stack_to_d
  @SP
  M=M-1
  A=M
  D=M
  //vv pop_stack_to_d
  END
end

def arith_d_with_stack_top(arith)
  return <<-END
  //^^ arith_d_with_stack_top(#{arith})
  @R13
  M=D
  #{pop_stack_to_d}
  @R13
  D=#{arith}
  //vv arith_d_with_stack_top(#{arith})
  END
end

def push_constant(const)
  return <<-END
  //^^ push_constant(#{const})
  @#{const}
  D=A
  #{push_d_to_stack}
  //vv push_constant(#{const})
  END
end

def arith_binary_op(op)
  return <<-END
  //^^ arith_binary_op(#{op})
  #{pop_stack_to_d}
  #{arith_d_with_stack_top "D#{op}M"}
  #{push_d_to_stack}
  //vv arith_binary_op(#{op})
  END
end

def arith_unary_op(op)
  return <<-END
  //^^ arith_unary_op(#{op})
  #{pop_stack_to_d}
  D=#{op}D
  #{push_d_to_stack}
  //vv arith_unary_op(#{op})
  END
end

def arith_cmp_op(jmp, label)
  return <<-END
  //^^ arith_cmp_op(#{jmp})
  #{pop_stack_to_d}
  #{arith_d_with_stack_top "D-M"}
  @PUT_TRUE_#{label}
  D;#{jmp}
  @R13
  M=0
  @CONT_#{label}
  0;JMP
  (PUT_TRUE_#{label})
  @R13
  M=-1
  (CONT_#{label})
  @R13
  D=M
  #{push_d_to_stack}
  //vv arith_cmp_op(#{jmp})
  END
end

def push_from_loc(loc)
  return <<-END
  //^^ push_from_loc(#{loc})
  @#{loc}
  D=M
  #{push_d_to_stack}
  //vv push_from_loc(#{loc})
  END
end

def push_from_ram(segment, index)
  return <<-END
  //^^ push_from_ram(#{segment}, #{index})
  @#{segment}
  D=M
  @#{index}
  A=D+A
  D=M
  #{push_d_to_stack}
  //vv push_from_ram(#{segment}, #{index})
  END
end

def pop_to_loc(loc)
  return <<-END
  //^^ pop_to_loc{#{loc})
  #{pop_stack_to_d}
  @#{loc}
  M=D
  //vv pop_to_loc{#{loc})
  END
end

def pop_to_ram(segment, index)
  return <<-END
  //^^ pop_to_ram(#{segment}, #{index})
  @#{segment}
  D=M
  @#{index}
  D=D+A
  @R13
  M=D
  #{pop_stack_to_d}
  @R13
  A=M
  M=D
  //vv pop_to_ram(#{segment}, #{index})
  END
end

static_prefix = File.basename(vm_file)
label_no = 0
input.each do |line|
  output << "//\n//// #{line}\n"
  x = parse_line(line)
  output <<
    case x[:type]
    when :push
      case x[:segment]
      when :constant
        push_constant(x[:index])
      when :local
        push_from_ram('LCL', x[:index])
      when :argument
        push_from_ram('ARG', x[:index])
      when :this
        push_from_ram('THIS', x[:index])
      when :that
        push_from_ram('THAT', x[:index])
      when :pointer
        push_from_loc(3 + x[:index])
      when :temp
        push_from_loc(5 + x[:index])
      when :static
        push_from_loc("#{static_prefix}.#{x[:index]}")
      end
    when :pop
      case x[:segment]
      when :local
        pop_to_ram('LCL', x[:index])
      when :argument
        pop_to_ram('ARG', x[:index])
      when :this
        pop_to_ram('THIS', x[:index])
      when :that
        pop_to_ram('THAT', x[:index])
      when :pointer
        pop_to_loc(3 + x[:index])
      when :temp
        pop_to_loc(5 + x[:index])
      when :static
        pop_to_loc("#{static_prefix}.#{x[:index]}")
      end
    when :arith
      case x[:op]
      when :add
        arith_binary_op('+')
      when :sub
        arith_binary_op('-')
      when :and
        arith_binary_op('&')
      when :or
        arith_binary_op('|')
      when :neg
        arith_unary_op('-')
      when :not
        arith_unary_op('!')
      when :eq
        arith_cmp_op('JEQ', label_no+=1)
      when :gt
        arith_cmp_op('JGT', label_no+=1)
      when :lt
        arith_cmp_op('JLT', label_no+=1)
      end
    else
      raise NotImplementedError
    end
end

output.each_line do |l|
  l.strip!
  out_io << l << "\n" unless l.empty?
end
