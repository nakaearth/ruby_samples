$:.unshift(File.dirname(__FILE__))

class Dog
  def initialize
    puts 'new------'
  end
end

Dog.new

class Dog2
  def initialize(name='koro')
    puts 'new------'
    puts name
    @name = name
  end
end

Dog2.new('nakamura')

class Cat
  def initialize(name='ごんた')
    @name = name
  end

  def say
    puts 'nya------'
  end

  def animal?
    true
  end

  def change_name!(new_name)
    @name = new_name
  end
end

cat = Cat.new('ころ')
p cat
cat.say
p cat.animal?
cat.change_name! 'けんた'
p cat

str = 'abcd'

puts str.reverse
puts str
puts str.reverse!
puts str

class Man
  attr_accessor :age, :name, :profile
end

man = Man.new
puts man.age
man.age = 30
puts man.age

class Bird
  @@test = 'test'
  def self.fly
    puts '飛んでるぞ'
  end

  def self.get_test
    @@test
  end
end

class Bird2
  @@test = 'test'
  class << self
    def fly
      puts "飛んでるぞ #{@@test}"
    end
    def get_test
      @@test
    end
  end
end
Bird.fly
Bird2.fly
puts Bird2.get_test

b = Bird.new
b.class.fly

p String.private_methods

p private.class
p Module.private_methods
p Class.ancestors

class Animal 
  NAME ='ANIMAL'
  def say
    puts 'hoge'
  end

  def hello
    puts 'hello'
  end
end

class  Dog4 < Animal
  def say
    super
    hello
    puts 'fuga'
  end
end

dog4 = Dog4.new
dog4.say
p Dog4::NAME

#class String
#  def +(value)
#     value + "hoge"
#  end
#end
#"test"+"test2"
#
