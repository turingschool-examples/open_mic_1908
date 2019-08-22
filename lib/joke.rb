class Joke
  attr_reader :joke, :id, :setup, :punchline

  def initialize(joke, id, setup, punchline)
    @joke = joke
    @id = id
    @setup = setup
    @punchline = punchline
  end

end
