pry(main)> require './lib/joke'
# => true

pry(main)> require './lib/user'
# => true
#
# pry(main)> sal = User.new("Sal")
# # => #<User:0x00007fb71e1eb8d8...>
#
# pry(main)> sal.name
# # => "Sal"
#
# pry(main)> sal.jokes
# # => []
#
# pry(main)> joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# # => #<Joke:0x00007fb71da169f0...>
#
# pry(main)> joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
# # => #<Joke:0x00007fb71d8e0bd0...>
#
# pry(main)> sal.learn(joke_1)
#
# pry(main)> sal.learn(joke_2)
#
# pry(main)> sal.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
