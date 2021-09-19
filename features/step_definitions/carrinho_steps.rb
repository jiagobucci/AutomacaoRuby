Dado('adiciono no carrinho') do
    @produto.visualiar_produto_pesquisado  
    @produto.detalhe_produto_pesquisado
    @produto.selecionar_cor_e_tamanho("azul")
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
      subtotal_do_magento= all(".cart-price")[1].text
      subtotal_do_magento["€"]=""
      p"valor do subtotal calculado pela automacao é igual #{subtotal}"
      p"valor do subtotal calculado pelo Magento é igual #{subtotal_do_magento}"
      expect(subtotal_do_magento.to_i).to eq subtotal
end
  
Quando('eu clicar no botão alterar') do
find(".action-edit").click

end
  
Quando('devo alterar escolhendo a cor, tamanho') do
    @produto.selecionar_cor_e_tamanho("cinza")
end
  
Quando('quantidade') do
    @return_qtd=@carrinho.preencher_quantidade("+1")
    
end
  
Quando('atualizar o carrinho') do
    click_button "Update Cart"
end
  
Então('verifico se foi alterado com sucesso') do
    result= find(".message-success").text
    expect(result).to eq "Lando Gym Jacket was updated in your shopping cart."
    
    expect(page).to have_text "Gray"
    expect(page).to have_text "S"

    qtd_carrinho=find("input[data-role='cart-item-qty']").value
    expect(qtd_carrinho.to_i).to eq @return_qtd

end

Quando('eu clicar no botão excluir') do
    find(".action-delete").click
end
  
Então('o produto deve ser excluído com sucesso') do
   expect(page).to have_text "You have no items in your shopping cart"
end