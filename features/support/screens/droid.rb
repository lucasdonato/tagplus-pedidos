
require_relative "android/screens"

class DroidScreens
  attr_accessor :login, :home

  def initialize
    @login = Login.new
    @home = HomePage.new
  end

end