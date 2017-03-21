# frozen_string_literal: true

require './notifable'

class SubjectB
  include Notifable

  attr_accessor :foo, :bar

  def foo=(val)
    @foo = val
    notify(self)
  end

  def bar=(val)
    @bar = val
    notify(self)
  end

  def foo
    @foo ||= 'FOO'
  end

  def bar
    @bar ||= 'BAR'
  end
end
