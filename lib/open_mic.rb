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
    jokes_by_performer = Hash.new(0)
    @performers.each do |performer|
      performer.jokes.each do |joke|
        jokes_by_performer[performer] = joke
      end
    end
    if jokes_by_performer.values == jokes_by_performer.values.uniq!
      false
    else
      true
    end
  end

end
