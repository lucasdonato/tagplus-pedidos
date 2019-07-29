#language: pt

@criar_produto
Funcionalidade: Cadastro de produtos
    Para realizar pedidos devo criar produtos
    Sendo um usuário logado no aplicativo

    @criar_usuario
      Esquema do Cenario: Novo produto
        O gestor do aplicativo cadastra um novo produto através do form
        e um novo registro é inserido na listagem dos produtos.
        
        Dado que <codigo> é um novo produto
        Quando eu faço o cadastro deste produto
        Então devo ver o novo produto na lista

        Exemplos:
            | codigo        |
            | "produto_1"   |
            | "produto_2"   |
            | "produto_3"   |