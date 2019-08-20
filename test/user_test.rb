
# pry(main)> sal.learn(joke_1)
#
# pry(main)> sal.learn(joke_2)
#
# pry(main)> sal.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]

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

  def test_it_exists
    assert_instance_of User, @sal
    assert_instance_of User, @ali
  end

  def test_it_has_attributes
    assert_equal "Sal", @sal.name
    assert_equal "Ali", @ali.name
  end

  def test_it_has_no_jokes
    assert_equal [], @sal.jokes
  end

  def test_jokes_exists
    assert_instance_of Joke, @joke_1
    assert_instance_of Joke, @joke_2
  end

  def test_learn_the_joke
    assert_equal @joke_1, @sal.learn
    assert_equal @joke_2, @sal.learn
  end

  def test_tell_the_joke
    assert_equal @joke_1, @sal.tell
    assert_equal @joke_2, @sal.tell
  end
end
