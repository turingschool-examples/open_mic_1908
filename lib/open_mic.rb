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
    @performers.push(user)
  end

  def repeated_jokes?
    @performers.each do |performer_1| 
      @performers.each do |performer_2|
        if performer_1 == performer_2
          next
        end
        performer_2.jokes.each do |joke_2|
          performer_1.jokes.each do |joke_1|
            if joke_1.id == joke_2.id
              return true
            end
          end
        end
      end
    end
    return false
  end

end