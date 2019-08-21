require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_has_a_name
    assert_equal "Sal", @sal.name 

  end
end
