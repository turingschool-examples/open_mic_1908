require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'


# pry(main)> require './lib/joke'
# # => true

# pry(main)> joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")    
# # => #<Joke:0x00007f84602e4190...>

# pry(main)> joke.id
# # => 1

# pry(main)> joke.setup
# # => "Why did the strawberry cross the road?"

# pry(main)> joke.punchline
# # => "Because his mother was in a jam."
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
