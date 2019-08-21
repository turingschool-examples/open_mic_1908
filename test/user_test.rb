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

  def test_they_exist
    assert_instance_of User, @sal
  end

  def test_they_have_attributes
    assert_equal "Sal", @sal.name
    assert_equal [], @sal.jokes
  end

  def test_they_can_learn_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    assert_equal @joke_1, @sal.jokes[0]
    assert_equal @joke_2, @sal.jokes[1]
  end

end
