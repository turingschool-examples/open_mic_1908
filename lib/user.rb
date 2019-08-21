require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require 'pry'

class User
  attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @joke = joke
    @jokes << @joke
  end

end
