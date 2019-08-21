require './lib/joke'
require 'pry'
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

  def joke_by_id(desired_id)
  
    jokes.find do |ids|
      ids = desired_id
      @jokes == (desired_id)
      return @jokes.at(ids - 1)
    end

  end
end
