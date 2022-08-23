class Person
  # NOTE: We use 'attr_reader' for the name since it should ONLY be allowed to be read and not changed
  # later on
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # Getter
  def name()
    @name
  end

  # Getter
  def bank_account()
    @bank_account
  end

  # Setter
  def bank_account()
    self.bank_account = @bank_account
  end

  # Getter
  def happiness()
    @happiness
  end

  # Setter
  def happiness=(val)
    @happiness = if val > 10
                   10
                 elsif val < 0
                   0
                 else
                   val
                 end
  end

  # Getter
  def hygiene()
    @hygiene
  end

  # Setter
  def hygiene=(val)
    @hygiene = if val > 10
                   10
                 elsif val < 0
                   0
                 else
                   val
                 end
  end

  # 'Additional Instance Methods' section:
  def clean?()
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?()
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath()
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out()
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
