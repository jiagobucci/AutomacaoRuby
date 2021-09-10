Dado('adiciono no carrinho') do
    @produto.visualiar_produto_pesquisado  
    @produto.detalhe_produto_pesquisado
    @produto.selecionar_cor_e_tamanho
    @preco_unitario_produto= first(".price").text 
    @produto.preencher_quantidade("1")
    @produto.adicionar_com_sucesso
 
end

Dado('acesso meu carrinho de compras') do
    click_link "shopping cart"
end
  
  Dado('que verifico a adiçao do produto') do
    result= find(".product-item-name").text
    expect(result).to eq "Lando Gym Jacket"
  end
  
  Quando('eu adicionar {string} á quantidade') do |quantidade|
  @qtd_randomica= @carrinho.preencher_quantidade(quantidade)
  end
  
  Quando('clicar no botão {string}') do |botao_atualizar|
  click_button botao_atualizar
  end
  
  Então('verifico se a quantidade e o Subtotal foram atualizados') do
    @preco_unitario_produto["€"]=""
    subtotal= @preco_unitario_produto.to_i * @qtd_randomica
    sleep 10
    subtotal_do_sistema= all(".cart-price")[1].text
    subtotal_do_sistema["€"]=""
    p"valor do subtotal calculado pela automacao é igual #{subtotal}"
    p"valor do subtotal calculado pelo sistema é igual #{subtotal_do_sistema}"
      expect(subtotal_do_sistema.to_i).to eq subtotal
        end
  
  Quando('eu clicar no botão alterar') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('devo escolher a cor, tamanho') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('quantidade') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('atualizar o carrinho') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('verifico se foi alterado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end