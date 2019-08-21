require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

# pry(main)> require './lib/joke'
# # => true

# pry(main)> require './lib/user'
# # => true

# pry(main)> sal = User.new("Sal")
# # => #<User:0x00007fb71e1eb8d8...>

# pry(main)> sal.name
# # => "Sal"

# pry(main)> sal.jokes
# # => []

# pry(main)> joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")    
# # => #<Joke:0x00007fb71da169f0...>

# pry(main)> joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")    
# # => #<Joke:0x00007fb71d8e0bd0...>

# pry(main)> sal.learn(joke_1)

# pry(main)> sal.learn(joke_2)

# pry(main)> sal.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]

class JokeTest < Minitest::Test
  
  def setup 
    @id        = 1
    @setup     = "Why did the strawberry cross the road?"
    @punchline = "Because his mother was in a jam."
    @joke      = Joke.new(@id, @setup, @punchline)
  end
  
  def test_it_exists
    assert_instance_of Joke, @joke
  end

  def test_it_has_attributes
    assert_equal 1, @joke.id
    assert_equal @setup, @joke.setup
    assert_equal @punchline, @joke.punchline
  end
end
