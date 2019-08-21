require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

# pry(main)> open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})    
# # => #<OpenMic:0x00007fe8fd9f5e00...>

# pry(main)> open_mic.location
# # => "Comedy Works"

# pry(main)> open_mic.date
# # => "11-20-18"

# pry(main)> open_mic.performers
# # => []

# pry(main)> open_mic.welcome(sal)

# pry(main)> open_mic.welcome(ali)

# pry(main)> open_mic.performers
# # => [#<User:0x00007fe8fda12a00...>, #<User:0x00007fe8ff0dddc0...>]

# pry(main)> ali.learn(joke_1)  

# pry(main)> ali.learn(joke_2)  

# pry(main)> open_mic.repeated_jokes?
# # => false

# pry(main)> ali.tell(sal, joke_1)    

# pry(main)> open_mic.repeated_jokes?
# # => true

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
  end

  def test_performers_starts_empty
  end

  def test_can_add_performer
  end

  def test_repeated_jokes
  end

end