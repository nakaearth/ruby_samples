$:.unshift(File.dirname(__FILE__))

str = "hello123"
p /^[a-z].*/ =~ str
p /^[1-9].*/ =~ str
p /.*[1-9].*/ =~ str
