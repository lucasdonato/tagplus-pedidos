  Dado("que acesso a tela de login") do
    expect(find_elements(class: 'android.widget.TextView').text('Selecione o perfil').displayed?).to be true
  end
  
  Quando("eu cadastro um novo usuário") do
    expect(@screen.user.create_user.text).to eql 'Perfil cadastrado com sucesso!'
  end
  
  Então("vejo a tela inicial do aplicativo") do
    expect(@screen.home.home_page.text).to eql 'Pesquisar pedido'
  end