require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_attributes
    assert_equal "Sal", @sal.name
  end

  def test_it_can_tell_a_joke
    @sal.tell(@ali, @joke1)
    @sal.tell(@ali, @joke2)
    assert_equal [@joke1, @joke2], @ali.jokes
  end

  def test_it_can_return_joke_by_id
    @sal.tell(@ali, @joke1)
    @sal.tell(@ali, @joke2)
    expected = @ali.joke_by_id(2)
    assert_equal expected, @joke2
  end

  def test_it_can_learn_a_joke
    @ali.learn(@joke1)
    @ali.learn(@joke2)
    assert_equal [@joke1, @joke2], @ali.jokes
end
