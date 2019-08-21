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
    @user = user
    @user.learn(joke)
  end

  def joke_by_id(id)
    @jokes.find {|joke| id == joke.id}
  end
end
