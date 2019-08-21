require './lib/joke.rb'
require './lib/user.rb'

class OpenMic
  attr_reader :location, :date, :performers, :told_jokes

  def initialize(location_and_date_hash)
    @location = location_and_date_hash[:location]
    @date = location_and_date_hash[:date]
    @performers = []
    @told_jokes = []
  end

  def welcome(performer)
    @performers << performer
  end

  def track_jokes(joke)
    @told_jokes << joke
  end

  def repeated_jokes?
    #
  end


end
