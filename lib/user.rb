require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class User
  attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end 

end
