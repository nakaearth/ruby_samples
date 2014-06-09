$:.unshift(File.dirname(__FILE__))

p (1..5).include?(5)
p (1...5).include?(5)

value = 'a'..'g'

value.each do |ch|
  puts ch
end

