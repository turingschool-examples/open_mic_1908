require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class JokeTest < Minitest::Test
  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_attributes
    assert_equal "Sal", @sal.name
    assert_equal [], @sal.jokes
  end

  def test_user_can_add_joke
    @sal.learn(@joke_1)
    assert_equal [@joke_1], @sal.jokes
  end

  def test_joke_is_added_to_jokes_array
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_user_can_tell_joke
    @sal.tell(@ali, @joke_1)
    assert_equal @ali.jokes, @sal.tell(@ali, @joke_1)
  end

  def test_joke_added_to_user_array
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)
    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_find_joke_by_id
    assert_equal @joke_1, @ali.joke_by_id(1)

  end
end
