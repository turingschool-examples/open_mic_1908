require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/joke'
require './lib/user'

class OpenMicTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "Comedy Works", @open_mic.location
  end

  def test_it_has_performers
    assert_equal [], @open_mic.performers
  end

  def test_it_can_welcome_performers
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_it_can_determine_repeated_jokes
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    @ali.learn(@joke1)
    @ali.learn(@joke2)

    assert_equal false, @open_mic.repeated_jokes?

    @ali.tell(@sal, @joke1)
    
    assert_equal true, @open_mic.repeated_jokes?
  end
end
