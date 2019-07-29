#language: pt

@usuario
Funcionalidade: Cadastrar Usuário
        Para que eu possa fazer pedidos e cadastros no aplicativo
        Preciso cadastrar um usuario antes de entrar no aplicativo

     Esquema do Cenario: Tentar cadastrar usuário
        Dado que acesso a tela de login
        Quando cadastro um usuário com <usuario>
        Então devo ver <mensagem> como popup

    Exemplos: 
        | usuario                   | mensagem                         |
        | "Lucas Donato"            | "Perfil cadastrado com sucesso!" |
        | ""                        | "Insira o nome do perfil"        |


