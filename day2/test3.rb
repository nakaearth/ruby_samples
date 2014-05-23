$:.unshift(File.dirname(__FILE__))

require 'dog'
require 'dog3'

## クラスメソッドには特異メソッド方式と特異クラス方式がある。
Dog.run
Dog3.run


dog = Dog.new
dog.hello

## 特異メソッドについて
## オブジェクトにメソッドを追加できる
def dog.hello2(message)
  puts message
end

dog.hello2 'test hello!'

