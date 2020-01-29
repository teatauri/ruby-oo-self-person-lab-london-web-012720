class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account, :salary, :person

  def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  def happiness=(happiness)
      @happiness = range(happiness)
  end

  def hygiene=(hygiene)
      @hygiene = range(hygiene)
  end

  def range(input)
     if input < 0
       input = 0
     elsif
       input > 10
       input = 10
     end
     input
  end

  def happy?
      if @happiness > 7
          true
      else
         false
      end
  end

  def clean?
      if @hygiene > 7
        true
      else
        false
      end
  end

  def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
  end

  def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
      self.hygiene -= 3
      self.happiness += 2
      return '♪ another one bites the dust ♫'
  end

  def call_friend(person)
      self.happiness += 3
      person.happiness += 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
     if topic == 'politics'
       self.happiness -= 2
       person.happiness -= 2
       return "blah blah partisan blah lobbyist"
     elsif topic == 'weather'
       self.happiness += 1
       person.happiness += 1
       return "blah blah sun blah rain"
     else
       return 'blah blah blah blah blah'
     end
  end

end
