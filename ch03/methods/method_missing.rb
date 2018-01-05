class Lawyer; end
nick = Lawyer.new
# p nick.talk_simple
p nick.send :method_missing, :my_method