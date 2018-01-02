# def replace(array, original, replacement)
#   array.map {|e| e == original ? replacement : e }
# end

class Array
  def substitute(original, replacement)
    map {|e| e == original ? replacement : e }
  end
end