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

    assert_instance_of User, @user
  end

  def test_it_has_attributes

    assert_equal ("Sal"), @sal.name
    assert_equal [], @sal.jokes
  end

  def test_has_jokes

    assert_equal [@joke_1, @joke_2], @sal.jokes


end
