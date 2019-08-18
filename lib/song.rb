
require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  include Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable

  
  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
