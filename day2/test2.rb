$:.unshift(File.dirname(__FILE__))

require 'cat'

@cat = Cat.new
@cat.hello

p Hoge
p Cat::Fuga
p Cat::Test

p defined? Class.new # <<<  Classクラスにnewメソッドがあるかどうか
p Class.methods

