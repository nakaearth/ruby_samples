code = <<END
10.times do|i|
  puts i
end
END

puts RubyVM::InstructionSequence.compile(code).disasm
