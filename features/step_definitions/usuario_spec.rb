Dado("que acesso a tela de login") do
  expect(find_elements(class: "android.widget.TextView").text("Selecione o perfil").displayed?).to be true
end

Quando("cadastro um usuário com {string}") do |user|
  @screen.user.create_user(user)
end

Então("devo ver {string} como popup") do |mensagem_esperada|
  expect(@screen.popup.text).to eql mensagem_esperada
end

Então("acesso a tela inicial do aplicativo") do
  expect(@screen.home.home_page.text).to eql "Pesquisar pedido"
end
