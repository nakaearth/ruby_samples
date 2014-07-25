#:.unshift(File.dirname(__FILE__))

class Dog

  def say(message = 'wanwan')
    puts message 
  end

  # sayメソッドの後に書かないと怒られる。
  alias hoeru say

end

dog = Dog.new
dog.say
dog.hoeru

dog.hoeru 'ほげほげ'

