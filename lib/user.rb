class User
  attr_reader :name, :jokes, :told
  def initialize(name)
    @name = name
    @jokes = []
    @told = false
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    @user = user
    @user.learn(joke)
    @told = true
  end

  def joke_by_id(id)
    @jokes.find {|joke| id == joke.id}
  end
end
