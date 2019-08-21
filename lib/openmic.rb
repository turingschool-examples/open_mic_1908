class OpenMic

  attr_reader :location, :date, :performers

  def initialize(hash)
    @location = hash[:location]
    @date = hash[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    # true if user has told joke (@user.tell) to another user
    # check if same joke is in both users joke array?
    # ^ But what if they've both learned the joke but not told it
    # keep track of told jokes?

    # if @ali.told_jokes == [] || @sal.told_jokes == []
    #   false
    # else
    #   true
    # end
  end

end
