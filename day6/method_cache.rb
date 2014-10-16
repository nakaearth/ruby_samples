class Hoge
  def hello(msg)
    return "#{msg} hello" if msg
    return msg = 'msgmsg' 
  end
  instance_cache :hello, "msg = \"test\""
end

@hoge = Hoge.new
@hoge.hello
@hoge.hello 'test'
@hoge.hello 'test2'


