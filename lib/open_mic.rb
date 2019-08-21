class OpenMic

  attr_reader :location, :date, :performers

  def initialize(open_mic_args)
    open_mic_args = defaults.merge(open_mic_args)
    @location = open_mic_args[:location]
    @date = open_mic_args[:date]
    @performers = []
  end

  def defaults
    {locaton: "location", date: "???"}
  end



end
