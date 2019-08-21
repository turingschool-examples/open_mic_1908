require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @jokes = [@joke_1, @joke_2]
    @user_1 = User.new("Name")
    @user_2 = User.new("Name2")
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_for_welcome
    @open_mic.welcome(@user_1)
    assert_equal @user_1, @open_mic.performers[0]
  end

  def test_for_repeated_joke
    @open_mic.welcome(@user_1)
    @open_mic.welcome(@user_2)
    @user_1.tell(@user_2, @joke_1)
    assert_equal false, @open_mic.repeated_jokes?
    @user_2.tell(@user_1, @joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end
end
