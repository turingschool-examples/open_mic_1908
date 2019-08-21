class OpenMic
  attr_reader :location, :date, :performers

  def initialize (location: "Comedy Works", date: "11-20-18", performers: [])
    @location = location
    @date = date
    @performers = []
  end

end

# def initialize(name, category = :appetizer)
#   @name = name
#   @category = {category => @name}
