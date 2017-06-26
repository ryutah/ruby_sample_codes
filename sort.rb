# frozen_string_literal: true

LIST_COUNT = 5_000

def bable_sort
  arr = random_list(LIST_COUNT)

  start = Time.now
  0.upto(arr.size - 2) do |i|
    (i + 1).upto(arr.size - 1) do |j|
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
  end
  e = Time.now
  puts "Bablesort : proctime #{e - start}ms"
end

def random_list(range)
  (0..range - 1).to_a.shuffle
end

bable_sort
