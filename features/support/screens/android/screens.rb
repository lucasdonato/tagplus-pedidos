
class User
  def create_user(user)
    find_element(xpath: "//*[@text='Criar Perfil']").click
    find_element(class: "android.widget.EditText").send_keys(user)
    find_elements(class: "android.widget.TextView").text("CRIAR PERFIL").click
  end

  def empty_user
    find_element(xpath: "//*[@text='Criar Perfil']").click
    find_element(class: "android.widget.EditText").send_keys("")
    find_elements(class: "android.widget.TextView").text("CRIAR PERFIL").click
  end
end

class HomePageLogin
  def home_page
    find_element(id: "android:id/button1").click
    find_element(xpath: "//*[@text='ENTRAR']").click
    find_element(class: "android.widget.EditText")
  end
end

class Produtos
  def create_product
  end
end

class MenuLateral
  def go_products
    find_element(class: "android.widget.TextView").click
    find_elements(class: "android.widget.TextView").text("Produtos").click
    find_elements(class: "android.widget.TextView")[3].click
  end
end
