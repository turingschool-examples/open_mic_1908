class OpenMic
  attr_reader :location, :date, :performers

  def initialize(data)
       @location = data[:location]
       @date = data[:date]
       @performers = []
  end

  def welcome(user)
       @performers << user
  end

  def repeated_jokes?
       # require 'pry' ; binding.pry

       joke_ids = []
       rep_jokes = false

       if @performers.length > 0
            @performers.each do |performer|
                 # binding.pry
                 performer.each do |user|
                 # binding.pry
                      user.jokes each {|joke| joke_ids << joke.id}
                 # binding.pry
                 end
            end

            joke_ids.sort
            # binding.pry

            joke_ids.each do |id|
                 # binding.pry
                 joke_id_last = 0
                 if id == joke_id_last
                      rep_jokes = true
                 else
                      joke_id_last = id
                      rep_jokes = false
                 end
            end
       else
            rep_jokes = false
       end

       rep_jokes
  end

end
