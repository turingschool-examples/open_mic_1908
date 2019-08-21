require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  
  def setup 
    @id        = 1
    @setup     = "Why did the strawberry cross the road?"
    @punchline = "Because his mother was in a jam."
    @joke      = Joke.new(@id, @setup, @punchline)
  end
  
  def test_it_exists
    assert_instance_of Joke, @joke
  end

  def test_it_has_attributes
    assert_equal 1, @joke.id
    assert_equal @setup, @joke.setup
    assert_equal @punchline, @joke.punchline
  end
end
