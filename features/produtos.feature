#language: pt

Funcionalidade: pesquisa de produtos
   
    Cenário: Pesquisa de produto disponivel no site
    
    Dado que acesso o site magento
    Quando efetuo a pesquisa de um produto pelo "SKU"
    Então visualizo o produto pesquisado no catalogo
    
    Cenário: Adicionar uma unidade do produto no carrinho
    
    Dado que acesso o site magento
    Quando efetuo a pesquisa de um produto pelo "SKU"
    E abro detalhe do produto
    E seleciono a cor, tamanho
    E preencho a quantidade "1"
    Então deve ser adicionado com sucesso

    @teste
    Cenário: Adicionar multiplas unidades do produto no carrinho e verificar se a quantidade esta correta
    
    Dado que acesso o site magento
    Quando efetuo a pesquisa de um produto pelo "SKU"
    E abro detalhe do produto
    E seleciono a cor, tamanho
    E preencho a quantidade "+1"
    Então deve ser adicionado com sucesso
    E acesso o carrinho
    E valido se a quantidade adicionada esta correta

