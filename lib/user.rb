class User

attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
    @jokes
  end

  def tell(recipient, joke)
    recipient.jokes << joke
  end
end
