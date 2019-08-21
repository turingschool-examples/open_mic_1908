require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/openmic'
require 'pry'

class OpenMicTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_existence
    assert_instance_of OpenMic, @open_mic
  end
end
