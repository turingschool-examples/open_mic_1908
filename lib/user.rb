class User
  attr_reader :user, :name, :jokes

  def initialize(user, name, jokes)
    @user = user
    @name = name
    @jokes = jokes
  end

  def learn
    @sal.jokes << @joke_1
    @sal.jokes << @joke_2
  end

  def tell
    @ali.jokes << @sal.jokes
  end  

end
