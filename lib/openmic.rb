require 'pry'

class OpenMic
  attr_reader :location, :date, :performers
  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(performer)
    @performers.push performer
  end
end
