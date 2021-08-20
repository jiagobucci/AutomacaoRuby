#language: pt

Funcionalidade: Cadastro de usuário
    @cad
    Cenário: Cadastro com sucesso

        Dado que acesso o site magento
            E desejo criar uma nova conta
        Quando informar os dados pessoais
            E dados de acesso
        Então finalizo o cadastro
            E visualizo o usuário na area logada
