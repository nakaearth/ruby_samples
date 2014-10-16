$:.unshift(File.dirname(__FILE__))

# 機能をmixin
module WanWanDog
  def say
    puts 'wan wan'
  end
end

class Dog
  include WanWanDog
end

d = Dog.new
d.say

# 名前空間としてつかう
module Animal

end

