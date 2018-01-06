def setup(&block)
  @setup << block
end

def event(description, &block)
  @events << { description: description, condition: block }
end

@setup = []
@events = []
load 'events.rb'

@events.each do |e|
  @setup.each do |s|
    s.call
  end
  puts "ALERT: #{e[:description]}" if e[:condition].call
end