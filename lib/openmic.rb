
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

  def repeated_jokes?
  if @performers.find_all do |performer|
     performer.jokes.uniq.length == performer.jokes.uniq
     false
   else
     true
     # end
      # end
    end
  end
end
