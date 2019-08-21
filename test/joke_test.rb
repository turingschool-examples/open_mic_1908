require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @joke = Joke.new
  end


  def test_it_exists
    assert_instance_of Joke, @joke
  end

  # def test_it_has_attributes
  # end
end
