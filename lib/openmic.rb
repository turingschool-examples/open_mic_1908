class OpenMic
  attr_reader :location, :date, :performers

  def initialize(data)
       @location = data[:location]
       @date = data[:date]
       @performers = []
  end

end
