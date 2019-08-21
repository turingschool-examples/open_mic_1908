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

end

# def initialize(name, category = :appetizer)
#   @name = name
#   @category = {category => @name}
