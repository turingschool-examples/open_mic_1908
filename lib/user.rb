class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(jokes)
    @jokes << jokes
  end

  def tell(name, jokes)
    name.learn(jokes)
  end
end
