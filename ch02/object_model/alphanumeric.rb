# def to_alphanumeric(s)
#   s.gsub(/[^\w\s]/, '')
# end

class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end