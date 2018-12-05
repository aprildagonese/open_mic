require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class TestUser < MiniTest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
    assert_instance_of Joke, @joke_1
    assert_instance_of Joke, @joke_2
  end

  def test_sal_has_no_initial_jokes
    assert_equal [], @sal.jokes
  end

  def test_sal_learns_joke
    assert_equal [@joke_1], @sal.learn(@joke_1)
    assert_equal [@joke_1, @joke_2], @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_sal_tells_ali_jokes
    assert_equal [@joke_1], @sal.tell(@ali, @joke_1)
    assert_equal [@joke_1, @joke_2], @sal.tell(@ali, @joke_2)
  end

  def test_ali_learned_jokes_from_sal
    @sal.tell(@ali, @joke_1)
    assert_equal [@joke_1], @ali.jokes
    @sal.tell(@ali, @joke_2)
    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_joke_by_id
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)
    assert_equal @joke_1, @ali.joke_by_id(1)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end

end
