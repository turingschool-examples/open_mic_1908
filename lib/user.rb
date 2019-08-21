require 'pry'
class User
  attr_reader :name, :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    # binding.pry
    correct_joke = []
    @jokes.each do |joke|
      if joke.id == id
      correct_joke << joke
      end
      correct_joke
    end
    correct_joke.first
  end
end

# joke_by_id
# in the array of jokes I want to print out the joke that has the id (id)
#
