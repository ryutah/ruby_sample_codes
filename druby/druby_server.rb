# frozen_string_literal: true

require 'drb/drb'

q = Queue.new
DRb.start_service('druby://localhost:12345', q)
DRb.thread.join
