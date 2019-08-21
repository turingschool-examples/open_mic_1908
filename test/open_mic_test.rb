require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test

  def setup
    @name_1   = "Sal"
    @name_2   = "Ali"
    @joke_1   = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2   = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @jokes    = [@joke_1, @joke_2]
    @sal      = User.new(@name_1)
    @ali      = User.new(@name_2)
    @data     = {
      location: "Comedy Works",
      date:     "11-20-18",
    }
    @open_mic = OpenMic.new(@data)
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_has_attributes
    assert_equal @data[:location], @open_mic.location
    assert_equal @data[:date], @open_mic.date
  end

  def test_performers_starts_empty
    assert_equal [], @open_mic.performers
  end

  def test_can_add_performer
    @open_mic.welcome(@sal)
    assert_equal [@sal], @open_mic.performers

    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_repeated_jokes
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal false, @open_mic.repeated_jokes?
    @ali.tell(@sal, @joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end

end