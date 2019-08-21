require './lib/joke.rb'
require './lib/user.rb'
require 'minitest/autorun'
require 'minitest/pride'

class UserTest < Minitest::Test

  def setup
    @joke1 = Joke.new(1,"Set","Punch")
    @joke2 = Joke.new(2,"Setup2","Punchline2")
    @user = User.new("Ryan")
  end

  def test_it_exists
    assert_instance_of User, @user
  end

  def test_it_has_a_name
    assert_equal "Ryan", @user.name
  end

  def test_it_starts_with_no_jokes
    assert_equal [], @user.jokes
  end

  def test_it_can_learn_jokes
    @user.learn(@joke1)
    @user.learn(@joke2)

    assert_equal [@joke1,@joke2], @user.jokes
  end

end
