

class Login

    def create_user 
        find_element(xpath: "//*[@text='Criar Perfil']").click
        find_element(class: "android.widget.EditText").send_keys("Lucas Donato")
        find_elements(class: 'android.widget.TextView').text('CRIAR PERFIL').click
        find_element(id: 'android:id/alertTitle')
    end
  
end

class HomePage 
    def home_page
        find_element(id: 'android:id/button1').click
        find_element(xpath: "//*[@text='ENTRAR']").click
        find_element(class: 'android.widget.EditText')
    end
end