$:.unshift(File.dirname(__FILE__))

require 'dog'
require 'cat'

@dog = Dog.new
@cat = Cat.new

@dog.hello
@cat.hello


p Dog.ancestors #クラスの階層関係を配列にする
