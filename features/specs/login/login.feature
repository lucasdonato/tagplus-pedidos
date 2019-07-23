#language: pt


Funcionalidade: Login
    Para que eu possa fazer compras dos itens clássicos
    Sendo um usuário cadastrado
    Posso me autenticar pela tela de login

    @login_happy
    Cenario: Usuário logado 

        Dado que acesso a tela de login
        Quando eu faço login
        Então vejo a tela inicial do aplicativo
