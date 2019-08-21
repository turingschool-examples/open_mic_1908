require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

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

class UserTest < Minitest::Test

  def setup
    @name   = "Sal"
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @jokes  = [@joke_1, @joke_2]
    @sal    = User.new(@name)
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_a_name
    assert_equal @name, @sal.name
  end

  def test_jokes_starts_empty
    assert_equal [], @sal.jokes
  end

  def test_can_add_jokes
    @sal.learn(@joke_1)
    assert_equal [@joke_1], @sal.jokes
    @sal.learn(@joke_2)
    assert_equal @jokes, @sal.jokes
  end

end