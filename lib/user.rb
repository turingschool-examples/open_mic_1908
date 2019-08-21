require './lib/joke'

class User
attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(insert_joke)
    @jokes << (insert_joke)
  end

  def tell(listener, joke)
    listener.jokes << joke
  end

end
