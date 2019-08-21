require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new(1, "Why did the chicken cross the road?", "To get to the other side.")
  end

  def test_it_exists
    assert_instance_of Joke, @joke
  end

  def test_it_has_attributes
    assert_equal 1, @joke.id
    assert_equal "Why did the chicken cross the road?", @joke.setup
    assert_equal "To get to the other side.", @joke.punchline
  end
end
