# frozen_string_literal: true

def start
  end_proc = false
  th = Thread.start do
    loop do
      break if end_proc
      puts 'hogehoge'
      sleep(0.2)
    end
    puts 'end hogehoge'
  end
  th = Thread.start do
    loop do
      break if end_proc
      puts 'fugafuga'
      sleep(0.3)
    end
    puts 'end fugafuga'
  end
  sleep(1)
  end_proc = true
  th.join
end

start
