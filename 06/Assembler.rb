#!/usr/bin/env ruby

asm_file = ARGV[0]
hack_file = asm_file.gsub(/asm$/, 'hack')
input = IO.readlines(asm_file)
output = open(hack_file, 'w')

input.map! do |x|
  x.gsub!(/\/\/.*/, '')
  x.strip!
end
input.reject!(&:'empty?')

symbols = {
  'SP' => 0,
  'LCL' => 1,
  'ARG' => 2,
  'THIS' => 3,
  'THAT' => 4,
  'SCREEN' => 16384,
  'KBD' => 24576,
}
(0..15).each {|i| symbols["R#{i}"] = i}

parsed = input.map do |line|
  result = {}
  result[:type] =
    case line[0]
    when '('
      :L_COMMAND
    when '@'
      :A_COMMAND
    else
      :C_COMMAND
    end
  case result[:type]
  when :C_COMMAND
    s = line.split('=')
    result[:dest] =
      if s.size == 2 then s[0] else '' end
    s = s[-1].split(';')
    result[:jump] =
      if s.size == 2 then s[1] else '' end
    result[:comp] = s[0]
  when :A_COMMAND
    s = line[1..-1]
    result[:symbol] =
      begin
        Integer(s)
      rescue ArgumentError
        s
      end
  when :L_COMMAND
    result[:symbol] = line[1..-2]
  end
  result
end

line_no = 0
parsed.each do |p|
  if p[:type] == :L_COMMAND then
    symbols[p[:symbol]] = line_no
  else
    line_no += 1
  end
end

var_alloc = 15
parsed.each do |p|
  case p[:type]
  when :L_COMMAND
    next
  when :A_COMMAND
    s = p[:symbol]
    unless s.is_a?(Integer)
      s = (symbols[s] or symbols[s] = var_alloc += 1)
    end
    bin = s.to_s(base=2)
    bin = '0' * (16 - bin.size) + bin
    output.puts bin
  else
    bin =
      '111' +
      if p[:comp].match(/M/) then '1' else '0' end +
      {
        '0' => '101010',
        '1' => '111111',
        '-1' => '111010',
        'D' => '001100',
        'A' => '110000',
        '!D' => '001101',
        '!A' => '110001',
        '-D' => '001111',
        '-A' => '110011',
        'D+1' => '011111',
        'A+1' => '110111',
        'D-1' => '001110',
        'A-1' => '110010',
        'D+A' => '000010',
        'A+D' => '000010',
        'D-A' => '010011',
        'A-D' => '000111',
        'D&A' => '000000',
        'A&D' => '000000',
        'D|A' => '010101',
        'A|D' => '010101',
      }[p[:comp].gsub('M', 'A')] +
      if p[:dest].match(/A/) then '1' else '0' end +
      if p[:dest].match(/D/) then '1' else '0' end +
      if p[:dest].match(/M/) then '1' else '0' end +
      {
        '' => '000',
        'JGT' => '001',
        'JEQ' => '010',
        'JGE' => '011',
        'JLT' => '100',
        'JNE' => '101',
        'JLE' => '110',
        'JMP' => '111',
      }[p[:jump]]
    output.puts bin
  end
end
