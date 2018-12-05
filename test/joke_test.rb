require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'




pry(main)> joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# => #<Joke:0x00007f84602e4190...>

pry(main)> joke.id
# => 1

pry(main)> joke.setup
# => "Why did the strawberry cross the road?"

pry(main)> joke.punchline
# => "Because his mother was in a jam."
