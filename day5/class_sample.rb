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

Dog2.new

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
  def self.fly
    puts '飛んでるぞ'
  end
end

class Bird2
  class << self
    def fly
      puts '飛んでるぞ'
    end
  end
end
Bird.fly
Bird2.fly

