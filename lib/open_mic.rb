class OpenMic
  attr_reader :location, :date, :performers

  def initialize(attrs)
    @location = attrs[:location]
    @date = attrs[:date]
    @performers = []
  end

  def welcome(user)
    @performers.push(user)
  end

  def joke_ids
    # Initialize a hash to store joke id's
    joke_ids = {}

    # For each performer at the open mic
    @performers.each do |user|

      # Create an array of joke ids that the person knows
      user_ids = user.jokes.map do |joke|
        joke.id
      end

      # Add that array as a value in hash with user's name as key
      joke_ids[user.name.downcase.to_sym] = user_ids
    end

    joke_ids
  end

end
