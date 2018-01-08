class String
  def self.inherited(subclass)
    puts "#{self} は #{subclass} に継承された"
  end
end

class MyString < String; end

module M1
  def self.included(othermod)
    puts "M1 は #{othermod} にインクルードされた"
  end
end

module M2
  def self.prepended(othermod)
    puts "M2 は #{othermod} にインクルードされた"
  end
end

class C
  include M1
  prepend M2
end

module M
  def self.method_added(method)
    puts "新しいメソッド: M##{method}"
  end

  def my_method; end
end

class C
  def self.include(*modules)
    puts "Called: C.include(#{modules})"
    super
  end

  include M
end