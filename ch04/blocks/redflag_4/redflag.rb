lambda {
  setups = []
  events = []

  Kernel.send :define_method, :setup do |&block|
    setups << block
  end

  Kernel.send :define_method, :event do |description, &block|
    events << { description: description, condition: block }
  end

  Kernel.send :define_method, :each_setup do |&block|
    setups.each do |s|
      block.call s
    end
  end

  Kernel.send :define_method, :each_event do |&block|
    events.each do |e|
      block.call e
    end
  end
}.call

load 'events.rb'

each_event do |e|
  each_setup do |s|
    s.call
  end
  puts "ALERT: #{e[:description]}" if e[:condition].call
end