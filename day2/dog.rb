require 'animal'

class Dog < Animal
  def hello
    p 'wanwan'
  end
  
  # 特異メソッド方式のクラスメソッド
  def self.run
    puts 'this method is class method.'
  end
end
