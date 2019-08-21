class OpenMic

  attr_reader :location, :date, :performers

  def initialize(hash)
    @location = hash[:location]
    @date = hash[:date]
    @performers = []
  end

end
