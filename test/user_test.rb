require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @name_1 = "Sal"
    @name_2 = "Ali"
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @jokes  = [@joke_1, @joke_2]
    @sal    = User.new(@name_1)
    @ali    = User.new(@name_2)
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_a_name
    assert_equal @name_1, @sal.name
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

  def test_tell_joke
    @sal.tell(@ali, @joke_1)
    assert_equal [@joke_1], @ali.jokes
    @sal.tell(@ali, @joke_2)
    assert_equal @jokes, @ali.jokes
  end

  def test_joke_by_id
    assert_nil @ali.joke_by_id(1)
    @ali.learn(@joke_1)
    assert_equal @joke_1, @ali.joke_by_id(1)

    assert_nil @ali.joke_by_id(2)
    @ali.learn(@joke_2)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end

end