Dado('que acesso o site magento') do
   @cadastro.acessar_aplicacao
  end
  
  Dado('desejo criar uma nova conta') do
    click_link_or_button  'Create an Account'  
  end
  
  Quando('informar os dados pessoais') do
    @cadastro.preencher_dados_do_usuario
  end
  
  Quando('dados de acesso') do
    @cadastro.preencher_dados_de_acesso
    
  end
  
  Então('finalizo o cadastro') do
    click_button "Create an Account"
  end
  
  Então('visualizo o usuário na area logada') do
    result= find(".message-success").text
    expect(result).to eq "Thank you for registering with Main Website Store."
 end