class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name  = name
    @jokes = []
  end

  def learn(joke)
    @jokes.push(joke)
  end

  def tell(user, joke)
    true
  end

  def joke_by_id(id)
    true
  end

end