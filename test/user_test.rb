require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    # users
    @sal = User.new("Sal")
    @ali = User.new("Ali")

    # jokes
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

  def test_learn_jokes
    @sal.learn(@joke_1)
    assert_equal [@joke_1], @sal.jokes
    @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

   def test_tell
     @sal.learn(@joke_1)
     @sal.tell(@ali, @joke_1)
     assert_equal [@joke_1], @ali.jokes
     @sal.learn(@joke_2)
     @sal.tell(@ali, @joke_2)
     assert_equal [@joke_1, @joke_2], @ali.jokes
   end

  def test_joke_by_id
    @ali.learn(@joke_1)
    assert_equal @joke_1, @ali.joke_by_id(1)
  end

end
