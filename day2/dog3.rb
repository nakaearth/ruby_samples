class Dog3
  #特異クラス方式のクラスメソッドの定義
  class << self
    def run
      puts 'this method is class method.'
    end
  end
end
