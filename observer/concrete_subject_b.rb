# frozen_string_literal: true

require './subject'

class ConcreteSubjectB < Subject
  attr_reader :name, :status

  def initialize
    @name = 'ConcreteSubjectB'
    @status = 10
  end

  def run
    num = random_number
    return if status >= num

    puts "#{name}の状態が#{status} -> #{num}に変わります"
    @status = num
    notify
  end
end
