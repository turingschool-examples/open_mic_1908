class OpenMic
  attr_reader :location, :date, :performers
  def initialize(info)
    @info = info
    @location = @info[:location]
    @date = @info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    found_jokes = @performers.find_all {|told_joke| told_joke.told == true}
    found_jokes.count >= 2 == true
  end
end
