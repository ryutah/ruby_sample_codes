# frozen_string_literal: true

class ConcreteObserver
  def update(subject)
    puts "観察者:ConcreteObserverA/通知者:#{subject.name}/状態#{subject.status}"
  end
end
