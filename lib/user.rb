require './lib/joke.rb'

class User
  attr_reader :name, :jokes, :told_jokes

  def initialize(name)
    @name = name
    @jokes = []
    @told_jokes = []
  end

  def learn(new_joke)
    @jokes << new_joke
  end

  def tell(other_user, joke)
    other_user.jokes << joke
    @told_jokes << joke
  end

  def joke_by_id(id)
    @jokes.find { |joke| joke.id == id}
  end
end
