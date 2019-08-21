require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @jokes = [@joke_1, @joke_2]
    @user_1 = User.new("Name")
    @user_2 = User.new("Name2")
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

  def test_for_tell
    @user_1.learn(@joke_1)
    @user_1.tell(@user_2, @joke_1)
    @user_1.tell(@user_2, @joke_2)
    assert_equal @jokes, @user_2.jokes
  end

  def test_joke_by_id
    @user_1.learn(@joke_1)
    @user_1.tell(@user_2, @joke_1)
    @user_1.tell(@user_2, @joke_2)
    assert_equal @joke_1, @user_2.joke_by_id(1)
    assert_equal @joke_2, @user_2.joke_by_id(2)
  end
end
