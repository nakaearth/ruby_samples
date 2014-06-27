$:.unshift(File.dirname(__FILE__))

def hello_block(&block)
  p '明示的にblockを引数で受け取りcallで実行'
  block.call
end

hello_block do
  p 'hello block'
end

def hello_block2(message, &block)
  p '引数だって渡せる。その場合は、blockは最後に宣言'
  p message
  block.call
end

hello_block2('hogehoge') do
  p 'hello block2'
end

def hello_block3 # &blockを省略
  p '明示的にblockを引数で受け取りcallで実行'
  yield # block.callと同じ
end

hello_block3 do
  p 'hello block3'
end

# procはblockをオブジェクト化したもの
# 引数も渡す定義をかける。この場合は一つ引数を受け取る場合を書いている。
proc = Proc.new do |s|
  p 'hello proc'
  p s
end
proc.call # 引数セットしなくてもOK
proc.call 'yoyohooooooo' # 引数セットすると

# lambda
lambda = lambda { p 'hello lambda' }
lambda.call

lambda2 = lambda { |val|  p "hello lambda #{val}" }
lambda2.call('hogehoge')
# lambda2.call こちら引数valを宣言しているので、セットしないとエラーになる


def hello_block4
  if block_given?
    yield(8)
  end
  p 'hello block4'
end

hello_block4

hello_block4 do |n|
  p 'blockを付けて呼び出す'
  n += 1
  p n
end

