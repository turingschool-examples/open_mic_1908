require 'pry'

class User
  attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes.push joke
  end

  def tell(user, joke)
    @jokes.push  joke
    # binding.pry
  end

end
