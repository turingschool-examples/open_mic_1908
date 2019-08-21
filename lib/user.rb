class User
    attr_reader :name,
                :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    name.jokes << joke
  end

#Couldnt figure out the iteration
  # def joke_by_id(number)
  #   @jokes.map do |num|
  #     return num if = number
  #     end
  #   end
  #
  # end

end
