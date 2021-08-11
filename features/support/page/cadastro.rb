class Cadastro
    include Capybara::DSL
    
    def acessar_aplicacao
        visit("https://demo-m2.bird.eu/")
    end
    
    def preencher_dados_do_usuario
        find("#firstname").set Faker::Name.name
        find("#lastname").set "batista"
        find("#is_subscribed").click
    end
    
    def preencher_dados_de_acesso
        find("#email_address").set Faker::Internet.email
        find("#password").set "Teste@456"
        find("#password-confirmation").set "Teste@456"
    end
    
    
    
end
