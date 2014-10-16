$:.unshift(File.dirname(__FILE__))

def test(value)
  p 'test method'
  return  value == 'hoge'
end

if test 'hoge'
  p true
else 
  p false
end

if test 'hoge2'
  p true
else 
  p false
end



