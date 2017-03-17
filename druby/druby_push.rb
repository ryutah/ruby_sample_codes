# frozen_string_literal: true

require 'drb/drb'

q = DRbObject.new_with_uri('druby://localhost:12345')

loop do
  q.push gets
end
