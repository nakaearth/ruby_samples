$:.unshift(File.dirname(__FILE__))

require 'dog3'
require 'dog4'

## rubyでのクラス定義ではClassオブジェクトを生成し、それをこの場合だったらDog4というグローバル定数に入れるという意味と動議
## 従ってDog3はDog4のようにも書ける。

dog3 = Dog3.new
dog3.run

dog4 = Dog4.new
dog4.run

