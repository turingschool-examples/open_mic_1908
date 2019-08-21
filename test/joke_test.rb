require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  end

  def test_it_exists
    assert_instance_of Joke, @joke_1
  end

  def test_it_has_attributes
    assert_equal 1, @joke_1.id
    assert_equal "Why did the strawberry cross the road?", @joke_1.setup
    assert_equal "Because his mother was in a jam.", @joke_1.punchline
  end
end
