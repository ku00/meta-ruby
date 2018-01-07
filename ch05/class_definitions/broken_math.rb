# In Ruby 2.4
# warning: constant ::Fixnum is deprecated
class Integer
  alias_method :old_plus, :+

  def +(value)
    old_plus(value).old_plus(1)
  end
end

p 1+1