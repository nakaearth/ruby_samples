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


class Cat
  def message() "meow" end
end
 
class Cat
  alias_method :orig_message, :message
  def message
    orig_message + orig_message
  end
end
 
cat = Cat.new
puts cat.message

