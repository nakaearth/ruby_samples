$:.unshift(File.dirname(__FILE__))

require 'lion'
require 'tiger'

@lion = Lion.new
@lion.hello
@lion.eat

@tiger = Tiger.new
@tiger.hello
Tiger.eat

p Lion.ancestors
p Tiger.ancestors

