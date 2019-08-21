require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_different_comedians_exist
    assert_instance_of User, @sal
    assert_instance_of User, @ali
  end

  def test_comedian_starts_with_an_empty_arrary_of_jokes
    assert_equal [], @sal.jokes
    assert_equal [], @ali.jokes
  end

  def test_the_existence_of_jokes
    assert_instance_of Joke, @joke_1
    assert_instance_of Joke, @joke_2
  end

  def test_comedian_can_learn_a_joke
    assert_equal [@joke_1], @sal.learn(@joke_1)
    assert_equal [@joke_1], @ali.learn(@joke_1)
  end

  def test_comedian_can_learn_a_different_joke
    assert_equal [@joke_2], @sal.learn(@joke_2)
    assert_equal [@joke_2], @ali.learn(@joke_2)
  end

  def test_comedian_can_have_multiple_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes

    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_a_comedian_can_tell_joke_to_another_comedian
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)
    assert_equal [@joke_1, @joke_2], @sal.tell(@ali, @jokes)
  end

  def test_a_joke_can_be_found_by_user_and_id
    skip
    assert_equal @joke_1, @ali.joke_by_id(1)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end
end
