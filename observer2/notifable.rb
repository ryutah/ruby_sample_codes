# frozen_string_literal: true

module Notifable
  def add_observe(&block)
    observers << block
  end

  def notify(subject)
    observers.each do |o|
      o.call(subject)
    end
  end

  def observers
    @observers ||= []
  end
end
