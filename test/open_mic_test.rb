require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < MiniTest::Test

  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @user = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @user_2 = User.new("Ali")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_welcome
    @open_mic.welcome(@user)
    @open_mic.welcome(@user_2)
    assert_equal [@user,@user_2], @open_mic.performers
  end

  def test_repeated_jokes?
    @open_mic.welcome(@user)
    @open_mic.welcome(@user_2)
    @user_2.learn(@joke_1)
    @user_2.learn(@joke_2)
    assert_equal false, @open_mic.repeated_jokes?
    @user_2.tell(@user,@joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end

end
