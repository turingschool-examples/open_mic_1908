require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_attributes
    assert_equal "Sal", @sal.name
  end

  def test_it_has_jokes
    assert_equal [], @sal.jokes
  end

  def test_it_can_learn
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal joke_1, @sal.learn(joke_1)
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal joke_2, @sal.learn(joke_2)
  end

  def test_it_learned_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal joke_1, @sal.jokes
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal joke_2, @sal.jokes
  end
end

# pry(main)> sal.learn(joke_1)
#
# pry(main)> sal.learn(joke_2)
#
# pry(main)> sal.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
