require 'benchmark'

hoge = 'aaaaaabbbbbceerwrrweqgaga123rgurwfkja'

n = 50
Benchmark.bm do |x|
  # fast
  x.report('fast') { n.times { hoge.tr('aa', 'xx') } }
  # slow
  x.report('slow') { n.times { hoge.gsub('aa', 'xx') } }
end

Benchmark.bm do |x|
  # fast
  x.report('fast') { n.times { hoge.sub('aa', 'xx') } }
  # slow
  x.report('slow') { n.times { hoge.gsub('aa', 'xx') } }
end

h = { a: 1, b: 2, c: 3 }
Benchmark.bm do |x|
  # fast
  x.report('fast') { n.times { h.each_key { |k| k } } }
  # slow
  x.report('slow') { n.times { h.keys.each { |k| k } } }
end

Benchmark.bm do |x|
  # fast
  x.report('fast') { n.times { a = 1; b =  2  } }
  # slow
  x.report('slow') { n.times {  a, b = 1, 2  } }
end

