class Dog3
  #特異クラス方式のクラスメソッドの定義
  class << self
    def run
      puts 'this method is class method.'
    end
  end
end

# # java で書くとすると
#
# public class Dog3 {
#   public static void run() {
#       System.out.println("this method is class method."); 
#   }
# }
#
