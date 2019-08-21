require './lib/joke'
require './lib/user'

class OpenMic
attr_reader :location, :date, :performers

  def initialize(attributes = {})
    attributes.each do |attr, value|
    define_singleton_method("#{attr}=") { |val| location[attr] = val }
    define_singleton_method(attr) { attributes[attr] }
    end
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end
end
