class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def user
    @name = "Sal"
  end

  def jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def learn(id, setup, punchline)
    jokes .each do |joke|
      << new_joke 
    end
  end
end
