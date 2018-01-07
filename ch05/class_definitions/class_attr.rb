class MyClass
  class << self
    attr_accessor :c
  end

  attr_accessor :a
end

class Class
  attr_accessor :b
end

obj = MyClass.new
obj.a = 2
p obj.a

MyClass.b = 42
p MyClass.b

MyClass.c = 'It works'
p MyClass.c