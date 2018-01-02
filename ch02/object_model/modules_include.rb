module M1
  def my_method
    'M1#my_method()'
  end
end

class C1
  include M1
end

class D1 < C1; end

p D1.ancestors

module M2
  def my_method
    'M2#my_method()'
  end
end

class C2
  prepend M2
end

class D2 < C2; end

p D2.ancestors