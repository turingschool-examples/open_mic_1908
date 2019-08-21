require 'pry'

class OpenMic
  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        jokes << joke
      end
    end
   if jokes == jokes.uniq
     false
   else
     true
   end
 end

end
