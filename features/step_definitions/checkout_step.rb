
Quando('clico no botão {string}') do |nome_botao|
click_button nome_botao
sleep 5
end

Quando('preencho os dados do Envio') do
@checkout.preencher_dados_do_Envio
end

Quando('valido os meus dados de pagamentos') do
@checkout.validar_dados_pagamento
end

Então('verifico se a compra foi efetuada com sucesso.') do
@checkout.validar_dados_da_compra_com_sucesso
end