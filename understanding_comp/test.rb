$:.unshift(File.dirname(__FILE__))

require 'number'
require 'add'
require 'multiply'

test = Add.new(
  Multiply.new(Number.new(1), Number.new(2)),
  Multiply.new(Number.new(3), Number.new(4))
)

p test

p Number.new(1).reducible?

p Add.new(Number.new(2), Number.new(3)).reducible?

