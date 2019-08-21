class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(data_hash)
    @location   = data_hash[:location]
    @date       = data_hash[:date]
    @performers = []
  end

  def welcome(user)
    true
  end

  def repeated_joke?
    "NOT A RETURN"
  end

end