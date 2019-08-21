class User
attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    selected = []
    @jokes.each do |joke|
      selected << joke if joke.id == id
    end
    selected[0]
  end

end
