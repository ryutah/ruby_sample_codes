# frozen_string_literal: true

require './subject_a'

sa = SubjectA.new

old_name = sa.name

sa.add_observe do |_subject|
  puts "SubjectA 状態の変更 #{old_name} -> #{sa.name}"
  old_name = sa.name
end

puts '終了時は"q"を入力'

loop do
  puts '新しい名前入力'
  sa.name = gets
end
