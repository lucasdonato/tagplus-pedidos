
require_relative "android/screens"

class DroidScreens
  attr_accessor :user, :home, :products, :menu_lateral

  def initialize
    @user = User.new
    @home = HomePageLogin.new
    @products = Produtos.new
    @menu_lateral = MenuLateral.new
  end
end
