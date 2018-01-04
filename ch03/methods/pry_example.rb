# gem install pry -v 0.9.12.2
require "pry"

pry = Pry.new
pry.memory_size = 101
p pry.memory_size
pry.quiet = true
p Pry.memory_size