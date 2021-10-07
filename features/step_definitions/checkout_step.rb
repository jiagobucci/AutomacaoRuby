Quando('clico no botão {string}') do |prosseguir_checkout|
    click_button prosseguir_checkout
    sleep 5
end
  
Quando('preencho os dados do Envio') do
    
    @checkout.preencher_dados_do_Envio
    sleep 5
    click_button "Next"
    @checkout.validar_dados_pagamento 
    click_button "Place Order"
    
end
  
Então('verifico se a compra foi efetuada com sucesso.') do
    @checkout.validar_dados_da_compra_com_sucesso
end