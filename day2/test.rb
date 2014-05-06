$:.unshift(File.dirname(__FILE__))

require 'dog'
require 'dog2'

@dog = Dog.new
@dog.hello
@dog.eat
@dog.run
p Dog.ancestors

puts "------"
@dog2 = Dog2.new
@dog2.eat
@dog2.run
p Dog2.ancestors
