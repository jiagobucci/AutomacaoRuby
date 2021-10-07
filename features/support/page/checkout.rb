class Checkout
    include Capybara::DSL
    include RSpec::Matchers
    
    def preencher_dados_do_Envio
        find("input[name='username']").set "jonatha@teste.com"
       find(ELEMENTS["checkout_campo_primeiro_nome"]).set "Jonathan"
       find(ELEMENTS["checkout_campo_ultimo_nome"]).set "Iagobucci"
       find(ELEMENTS["checkout_campo_company"]).set "Plusoft"
       find(ELEMENTS["checkout_campo_endereço"]).set "Rua Juan Vicente 444"
       find("select[name='country_id'] option[value='BR']").click
       find("select[name='region_id'] option[value='485']").click
       find(ELEMENTS["checkout_campo_cidade"]).set "Osasco"
       find(ELEMENTS["checkout_campo_cep"]).set "06160-180"
       find(ELEMENTS["checkout_campo_telefone"]).set "11986662665"
        sleep 5
       first("input[class='radio']").click
    end

    def validar_dados_pagamento
        # sleep 5
        # p pagamento= all(ELEMENTS["checkout_campo_validar_dados_pagamento"]).text
        # expect(pagamento).to eq "Payment Method"
    
    end

    def validar_dados_da_compra_com_sucesso
        compra=find(ELEMENTS["checkout_campo_validar_compra_com_sucesso"]).text
        expect(compra).to eq "Thank you for your purchase!"
    end
    
end