# frozen_string_literal: true

module Notifiable
  def add_notify_target(target)
    targets << target
  end

  def remove_notify_target(target)
    targets.delete(target)
  end

  def notify(subject)
    targets.each do |t|
      t.update(subject)
    end
  end

  def targets
    @targets ||= []
  end
end
