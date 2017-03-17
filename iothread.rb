# frozen_string_literal: true

input = Fiber.new do
  loop do
    Fiber.yield(gets)
    puts 'Resume input'
  end
end

output = Fiber.new do |str|
  loop do
    puts "Your input is #{str}"
    str = Fiber.yield
    puts 'Resume output'
  end
end

loop do
  str = input.resume
  output.resume(str)
  puts 'Repeat Execute'
end
