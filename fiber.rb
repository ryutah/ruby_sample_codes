# frozen_string_literal: true

f = Fiber.new do |first|
  second = Fiber.yield(first.to_s)
  "#{first}, #{second}"
end

fib = Fiber.new do
  a, b = 0, 1
  loop do
    a, b = b, a + b
    Fiber.yield(a)
  end
end

10.times do
  puts fib.resume
  sleep(1)
end
