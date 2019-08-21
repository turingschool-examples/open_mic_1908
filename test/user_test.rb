require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_a_name
    assert_equal "Sal", @sal.name
  end

  def test_it_starts_with_no_jokes
    assert_equal [], @sal.jokes
  end

  def test_it_can_learn_jokes
    @sal.learn(@joke_1)

    assert_equal [@joke_1], @sal.jokes

    @sal.learn(@joke_2)

    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_it_can_tell_a_joke_to_another_user
    @sal.tell(@ali, @joke_1)

    assert_equal [@joke_1], @ali.jokes

    @sal.tell(@ali, @joke_2)

    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_it_can_list_learned_jokes_by_id
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)

    assert_equal @joke_1, @ali.joke_by_id(1)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end

  def test_joke_not_yet_learned_returns_nil
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)

    assert_nil @ali.joke_by_id(3)
  end

end
