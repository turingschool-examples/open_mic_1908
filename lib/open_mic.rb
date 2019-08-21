class OpenMic
  attr_reader :location, :date, :performers

  def initialize(event)
    @location = event[:location]
    @date = event[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        if !jokes.include?(joke)
          jokes << joke
        elsif jokes.include?(joke)
          return true
        end
      end
    end
    false
  end
end
