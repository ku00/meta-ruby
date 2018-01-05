require 'builder'
builder = Builder::XmlMarkup.new(target: STDOUT, indent: 2)

p builder.coder { |b|
  b.name '降幡', nickname: 'huririn'
  b.language 'Ruby'
}

p builder.semester { |b|
  b.class 'エジプト学'
  b.class '鳥類学'
}