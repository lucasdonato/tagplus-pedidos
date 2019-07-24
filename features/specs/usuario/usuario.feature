#language: pt


Funcionalidade: Acessar aplicativo sem login
    Para que eu possa fazer pedidos e cadastros no aplicativo
    Sendo um usuário cadastrado
    Preciso entrar no aplicativo

    Cenario: Criar usuário
        Dado que acesso a tela de login
        Quando eu cadastro um novo usuário
        Então vejo a tela inicial do aplicativo

    #implementar
    #Cenário: Dados obritórios
