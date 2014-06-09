$:.unshift(File.dirname(__FILE__))

require 'dog3'

dog3 = Dog3.new
p dog3.class.ancestors

p "name".class.ancestors
p :name.class.ancestors
p 1.class.ancestors
p [1,2,3].class.ancestors
h =  {a: 1,  b: 2, c: 3}
p h.class.ancestors
p true.class.ancestors
p nil.class.ancestors
p "nil object_id >>>>> "
p nil.object_id

puts "string oject_id >>>>>>>"
p "name".object_id
puts "string oject_id 2回目 >>>>>>>"
p "name".object_id
puts "symbol のobject_id >>>>>"
p :name.object_id
puts "symbol のobject_id >>>>>"
p :name.object_id
puts "1のobject_id >>>>"
p 1.object_id
puts "1のobject_id 2回目 >>>>"
p 1.object_id


