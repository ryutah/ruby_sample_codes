# frozen_string_literal: true

o, i = IO.pipe

Thread.new do
  i.puts gets
end

puts "Input #{o.gets}"
