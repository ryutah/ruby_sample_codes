# frozen_string_literal: true

require './subject'

class ConcreteSubjectA < Subject
  attr_reader :name, :status

  def initialize
    @name = 'ConcreteSubjectA'
    @status = 0
  end

  def run
    num = random_number
    return if status >= num

    puts "#{name}の状態が#{status} -> #{num}に変わります"
    @status = num
    notify
  end
end
