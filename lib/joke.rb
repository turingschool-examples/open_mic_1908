class Joke
  attr_reader :id, :question
  def initialize(id, question, answer)
    @id = id
    @question = question
  end

  def setup
    @question 
  end
end
