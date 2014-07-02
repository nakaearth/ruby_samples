$:.unshift(File.dirname(__FILE__))

t_fiber = Fiber.new do |val|
  val2 = Fiber.yield(val)
  val += 10 * val2
end

b_fiber = Fiber.new do |val|
  val += 20 * val
  Fiber.yield(val)
end

puts "t_fiber: #{t_fiber.resume(1)}"
puts "b_fiber: #{b_fiber.resume(2)}"
puts "t_fiber: #{t_fiber.resume(3)}"

