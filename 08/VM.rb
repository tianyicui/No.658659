#!/usr/bin/env ruby

arg = ARGV[0]
vm_files = []
asm_file = ''
if arg.match(/\.vm$/) then
  vm_files = [arg]
  asm_file = arg.gsub(/vm$/, 'asm')
else
  vm_files = Dir["#{arg}/*.vm"]
  asm_file = arg + "/#{File.basename(arg)}.asm"
end
out_io = open(asm_file, 'w')

output = ''
func_name = ''
func_dict = {}
func_calls = {}

label_no = 0
vm_files.each do |vm_file|
  input = IO.readlines(vm_file)

  input.map! do |x|
    x.gsub!(/\/\/.*/, '')
    x.strip!
  end
  input.reject!(&:'empty?')

  def parse_line(line)
    if %w[add sub neg eq gt lt and or not].include?(line) then
      return { :type => :arith, :op => line.to_sym }
    end
    s = line.split
    if %w[push pop].include?(s[0]) then
      return { :type => s[0].to_sym,
               :segment => s[1].to_sym,
               :index => s[2].to_i }
    end
    if %w[label if-goto goto].include?(s[0]) then
      return { :type => s[0].to_sym,
               :label => s[1] }
    end
    if 'function' == s[0] then
      return { :type => s[0].to_sym,
               :name => s[1],
               :locals => Integer(s[2]) }
    end
    if 'call' == s[0] then
      return { :type => s[0].to_sym,
               :name => s[1],
               :args => Integer(s[2]) }
    end
    if 'return' == s[0] then
      return { :type => s[0].to_sym }
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
    @R13
    M=0
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
    @R13
    M=0
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
    @R13
    M=0
    //vv pop_to_ram(#{segment}, #{index})
    END
  end

  static_prefix = File.basename(vm_file)
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
      when :label
        "(#{func_name}$#{x[:label]})\n"
      when :goto
        "@#{func_name}$#{x[:label]}\n0;JMP\n"
      when :'if-goto'
        <<-END
          #{pop_stack_to_d}
          @#{func_name}$#{x[:label]}
          D;JNE
        END
      when :function
        unless func_name.empty?
          func_dict[func_name] = output
          output = ''
        end
        func_name = x[:name]
        func_calls[func_name] = {}
        "(#{func_name})\n" + "D=0\n#{push_d_to_stack}\n" * x[:locals]
      when :return
        part1 = <<-END
          @LCL
          D=M
          @R14
          M=D //R14=LCL

          @5
          A=D-A
          D=M
          @R15
          M=D //R15=*(LCL-5)

          #{pop_stack_to_d}
          @ARG
          A=M
          M=D //*ARG = pop()

          @ARG
          D=M
          @SP
          M=D+1 //SP=ARG+1
        END
        part2 = %w[THAT THIS ARG LCL].map do |reg|
          <<-END
          @R14
          AM=M-1
          D=M
          @#{reg}
          M=D //#{reg} = *(--R14)
          END
        end.join("\n")
        part3 = <<-END
          @R15
          A=M
          0;JMP //goto *R15
        END
        part1 + part2 + part3
      when :call
        func_calls[func_name][x[:name]] = true
        label = label_no += 1
        part1 = <<-END
          #{push_constant("RET_ADDR_#{label}")} //push return-address
        END
        part2 = %w[LCL ARG THIS THAT].map do |reg|
          <<-END
          @#{reg}
          D=M
          #{push_d_to_stack} //push #{reg}
          END
        end.join("\n")
        part3 = <<-END
          @SP
          D=M
          @ARG
          M=D
          @#{x[:args]+5}
          D=A
          @ARG
          M=M-D // ARG = SP - args - 5
          @SP
          D=M
          @LCL
          M=D // LCL = SP
          @#{x[:name]}
          0;JMP
          (RET_ADDR_#{label})
        END
        part1 + part2 + part3
      else
        raise NotImplementedError
      end
  end
end

func_dict[func_name] = output
output = <<-END
  @261
  D=A
  @SP
  M=D //SP=261
  @Sys.init
  0;JMP
END

class DFS
  def initialize(source, graph)
    @source = source
    @graph = graph
    @visited = {}
  end
  def solve
    go(@source)
    return @visited
  end
  def go(x)
    return if @visited[x]
    @visited[x] = true
    @graph[x].each_key{|y| p "#{x} -> #{y}"; go(y)}
  end
end

called_func = DFS.new('Sys.init', func_calls).solve
p called_func
func_dict.each do |k, v|
  output << v if called_func[k]
end

count = -1
output.each_line do |l|
  l.strip!
  unless l.empty?
    out_io << "// ##{count+=1}\n" unless l.match(/^\/\//) or l.match(/^\(/)
    out_io << l <<"\n"
  end
end
