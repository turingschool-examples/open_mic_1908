require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/user'
require './lib/joke'

class OpenMicTest < Minitest::Test

  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    @sal = User.new("Sal")
    @ali = User.new("Ali")

    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @joke_3 = Joke.new(3, "Why didn't Cinderella make the high school soccer team?", "Because she was always running away from the ball.")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
  end

  def test_it_starts_with_no_performers
    assert_equal [], @open_mic.performers
  end

  def test_welcome_adds_user_to_list_of_performers
    @open_mic.welcome(@sal)

    assert_equal [@sal], @open_mic.performers

    @open_mic.welcome(@ali)

    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_it_has_repeated_jokes
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    @sal.learn(@joke_2)
    @ali.learn(@joke_1)
    @ali.learn(@joke_3)

    assert_equal false, @open_mic.repeated_jokes?

    @ali.tell(@sal, @joke_1)

    assert_equal true, @open_mic.repeated_jokes?
  end

  def test_joke_ids_creates_hash_of_ids_by_performer
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    @sal.learn(@joke_2)
    @ali.learn(@joke_1)
    @ali.learn(@joke_3)

    expected = {:sal => [2],
                :ali => [1, 3]
               }

    assert_equal expected, @open_mic.joke_ids
  end

end
