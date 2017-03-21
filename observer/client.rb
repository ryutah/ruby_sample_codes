# frozen_string_literal: true

require './concrete_observer'
require './concrete_subject_a'
require './concrete_subject_b'

ob = ConcreteObserver.new
sb1 = ConcreteSubjectA.new
sb2 = ConcreteSubjectB.new
sb1.add(ob)
sb2.add(ob)

50.times do
  sb1.run
  sb2.run
  sleep(0.5)
end

puts 'END'
