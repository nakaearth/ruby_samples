$:.unshift(File.dirname(__FILE__))

require 'fiber'
def count
  n = 0
  Fiber.new do
    n = 0
    m = 1
    loop do
      Fiber.yield n + m
      p "=" * 10
      p "m= #{m}"
      p "n=#{n}"
      p "=" * 10
      n, m = m, n + m
    end
  end
end

c = count
10.times do
  p c.resume
end

