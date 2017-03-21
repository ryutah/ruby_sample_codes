# frozen_string_literal: true

class Subject
  def add(observer)
    observers << observer
  end

  def remove(observer)
    observers.delete(observer)
  end

  def notify
    observers.each do |o|
      o.update(self)
    end
  end

  def observers
    @observers ||= []
  end

  def random_number
    Random.rand(100)
  end
end
