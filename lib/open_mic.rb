class OpenMic
   attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    # find out if anyone knows the same jokes...
    # if performer[1].jokes == performer[2].jokes
    #   ture
    # else
    #   false
    # end
  end

end
