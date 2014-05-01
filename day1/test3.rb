$:.unshift(File.dirname(__FILE__))

require 'dog'
require 'cat'
require 'ability'

@dog = Dog.new
@cat = Cat.new

@dog.hello
@dog.extend(Ability)

@dog.eat
