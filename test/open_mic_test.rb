require './lib/joke.rb'
require './lib/user.rb'
require './lib/open_mic.rb'
require 'minitest/autorun'
require 'minitest/pride'

class OpenMicTest < Minitest::Test

  def setup
    @joke1 = Joke.new(1,"Set","Punch")
    @joke2 = Joke.new(2,"Setup2","Punchline2")
    @user1 = User.new("Ryan")
    @user2 = User.new("Jim Bob")
    @open_mic = OpenMic.new({location: "The Laugh Lounge", date: "08-21-19"})
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "The Laugh Lounge", @open_mic.location
    assert_equal "08-21-19", @open_mic.date
  end

  def test_it_is_create_with_no_performers
    assert_equal [], @open_mic.performers
  end

  def test_it_can_welcome_new_performers
    @open_mic.welcome(@user1)

    assert_equal [@user1], @open_mic.performers
  end

  def test_it_starts_with_no_jokes_told
    assert_equal [], @open_mic.told_jokes
  end

  def test_it_can_track_what_jokes_have_been_told
    #
  end

  def test_it_can_tell_when_jokes_are_repeated
    #
  end


end
