require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < MiniTest::Test

  def setup
    @user = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @user_2 = User.new("Ali")
  end

  def test_it_exists
    assert_instance_of User, @user
  end

  def test_it_has_attributes
    assert_equal "Sal", @user.name
    assert_equal [], @user.jokes
  end

  def test_learn
    @user.learn(@joke_1)
    @user.learn(@joke_2)
    assert_equal [@joke_1,@joke_2], @user.jokes
  end

  def test_tell
    @user.learn(@joke_1)
    @user.learn(@joke_2)
    @user.tell(@user_2, @joke_1)
    @user.tell(@user_2, @joke_2)
    assert_equal [@joke_1,@joke_2], @user_2.jokes
  end

  def test_joke_by_id
    @user.learn(@joke_1)
    @user.learn(@joke_2)
    @user.tell(@user_2, @joke_1)
    @user.tell(@user_2, @joke_2)
    assert_equal @joke_1, @user_2.joke_by_id(1)
    assert_equal @joke_2, @user_2.joke_by_id(2)
  end


end
