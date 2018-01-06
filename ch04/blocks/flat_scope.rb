my_var = '成功'

# class MyClass
#   # puts my_var
#   def my_method
#     # puts my_var
#   end
# end

# MyClass = Class.new do
#   puts "クラス定義の中は#{my_var}"
#   def my_method
#     # puts my_var
#   end
# end

MyClass = Class.new do
  puts "クラス定義の中は#{my_var}"
  define_method :my_method do
    "メソッド定義の中も#{my_var}"
  end
end

puts MyClass.new.my_method