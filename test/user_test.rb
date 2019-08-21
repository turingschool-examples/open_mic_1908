require './lib/joke.rb'
require './lib/user.rb'
require 'minitest/autorun'
require 'minitest/pride'

class UserTest < Minitest::Test

  def setup
    @joke1 = Joke.new(1,"Set","Punch")
    @joke2 = Joke.new(2,"Setup2","Punchline2")
    @user1 = User.new("Ryan")
    @user2 = User.new("Jim Bob")
  end

  def test_it_exists
    assert_instance_of User, @user1
  end

  def test_it_has_a_name
    assert_equal "Ryan", @user1.name
  end

  def test_it_starts_with_no_jokes
    assert_equal [], @user1.jokes
  end

  def test_it_can_learn_jokes
    @user1.learn(@joke1)
    @user1.learn(@joke2)

    assert_equal [@joke1,@joke2], @user1.jokes
  end

  def test_it_can_tell_jokes_to_other_users
    @user1.learn(@joke1)
    @user1.learn(@joke2)
    @user1.tell(@user2, @joke1)

    assert_equal [@joke1], @user2.jokes

    @user1.tell(@user2 ,@joke2)

    assert_equal [@joke1, @joke2], @user2.jokes
  end

  def test_it_can_find_jokes_by_id
    @user1.learn(@joke1)
    @user1.learn(@joke2)

    assert_equal @joke1, @user1.joke_by_id(1)
    assert_equal @joke2, @user1.joke_by_id(2)
  end


end
