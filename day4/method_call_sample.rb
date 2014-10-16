$:.unshift(File.dirname(__FILE__))

# 普通は小文字で始めるが大文字で始める事も可能
def Hello
  puts 'hello! hello!'
end

# 呼び出すときは括弧つけて。小文字で始まっている場合は括弧省略できる
Hello()

def call
  'hoge hoge'
end

# 最後に評価された式が戻り値としてなる
puts call

# 仮引数
def greet(name, message='hi')
  puts "#{message}, #{name}"
end

greet('nakamura')

greet('nakamura', 'hello!')

# 可変長引数
def greet2(name, *messages)
  puts name
  messages.each do |m|
    puts m
  end
  p "=" * 5
  p messages.class
end

greet2('nakamura', 'hoge', 'fuga', 'ooo')

#def greet3(name, message1, message2)
#  puts "#{name}, #{message1}"
#  puts "#{name}, #{message2}"
#end
#
#msgs = %w(hello hey oooo)
#greet3('nakamura', *msgs)

# ブロック

%w(aaa bb ccc).each do |v|
  puts v
end

# yield
def block_sample
  puts 'start'
  yield if block_given?
  puts 'end'
end

# ブロックを渡す
block_sample do
  puts 'hogehoge'
end

# ブロックを渡さない
block_sample

# キーワード引数
def hello(message, name: 'testUser', age: 30)
  puts "#{name}さん#{age}歳、message"
end

hello('hello!!')
hello('Hello world', age: 36)
hello('Hello world', name: 'nakamura')
hello('Hello world', name: 'nakamura', age: 36)
hello('Hello world', age: 36, name: 'nakamura')

