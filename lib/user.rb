class User
  attr_reader :name, :jokes, :told_jokes

  def initialize(name)
    @name = name
    @jokes = []
    @told_jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
    @told_jokes << joke
  end

  def joke_by_id(id)
    jokes_id = @jokes.find_all do |joke|
      joke.id == id
    end
    jokes_id[0]
  end

end
