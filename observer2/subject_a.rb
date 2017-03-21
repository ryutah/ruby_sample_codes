# frozen_string_literal: true

require './notifable'

class SubjectA
  include Notifable

  attr_accessor :name

  def name=(val)
    @name = val
    notify(self)
  end

  def name
    @name ||= 'Init Subject A'
  end
end
