class OpenMic
  attr_reader :location, :date, :performers

  def initialize (location: "Comedy Works", date: "11-20-18")
    @location = location
    @date = date
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    if @performers.tell == false
      false
    else
      true
    end

  end

end
