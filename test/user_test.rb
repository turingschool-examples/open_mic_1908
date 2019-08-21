require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @user_1 = User.new("Name")
  end

  def test_it_exists
    assert_instance_of User, @user_1
  end

  def test_it_has_attributes
    assert_equal "Name", @user_1.name
    assert_equal [], @user_1.jokes
  end

  def test_for_learn
    @user_1.learn(@joke_1)
    assert_equal @joke_1, @user_1.jokes[0]
  end
end
