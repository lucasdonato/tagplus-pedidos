#language: pt


Funcionalidade: Login
    Para que eu possa fazer pedido no aplicativo
    Sendo um usuário cadastrado ou não
    Preciso acessar o aplicativo para autorização

    @login_happy
    Cenario: Usuário logado 

        Dado que acesso a tela de login
        Quando eu cadastro um novo usuário
        Então vejo a tela inicial do aplicativo
