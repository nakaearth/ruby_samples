require 'benchmark'

hoge = 'aaaaaabbbbbceerwrrweqgaga123rgurwfkja'

n = 50
Benchmark.bm do |x|
  # fast
  x.report { n.times { hoge.tr('aa', 'xx') } }
  # slow
  x.report { n.times { hoge.gsub('aa', 'xx') } }
end



