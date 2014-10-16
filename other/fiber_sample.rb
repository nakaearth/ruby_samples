$:.unshift(File.dirname(__FILE__))

fi = Fiber.new do |first|
  # 処理
  second = Fiber.yield("#{first}!")
  "#{first}, #{second}"
end

puts fi.resume('hello')
puts fi.resume('world')

proc = Proc.new do |text|
  "Hello#{text}"
end
puts proc.call("!")
puts proc.call(', world!')
proc.call
