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
  env = Object.new
  each_setup do |s|
    env.instance_eval &s
  end
  puts "ALERT: #{e[:description]}" if env.instance_eval &(e[:condition])
end