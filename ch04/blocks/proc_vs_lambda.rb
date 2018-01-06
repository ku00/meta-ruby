def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
p double(l)

def another_double
  my_proc = Proc.new { return 10 }
  result = my_proc.call
  return result * 2
end

p another_double

# my_proc = Proc.new { return 10 }
# p double(my_proc)

my_proc = Proc.new { 10 }
p double(my_proc)