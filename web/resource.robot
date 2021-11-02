***Settings***
Library           SeleniumLibrary
Library           FakerLibrary

***variables***
${urL}           http://automationpractice.com/index.php
&{Home}          campo_de_busca=css:#search_query_top
...              icone_de_busca=//input[@id="search_query_top"]/following-sibling::button[@type='submit']
&{produtos}      Blouse=//a[@title="Blouse"]/img[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]

***keywords***
Acessar a página home do site Automation Practice
    [Documentation]    esta keyword é responsavel por abrir o site que iremos automatizar
    GO TO   ${urL}

Digitar o nome do produto "${produto}" no campo de Pesquisa
    Wait Until Element Is Visible    ${Home.campo_de_busca}
    Input Text                       ${Home.campo_de_busca}     ${produto}
    
Clicar no botão Pesquisar
    Wait Until Element Is Visible     ${Home.icone_de_busca}
    Click Element                     ${Home.icone_de_busca}

Conferir se o produto "Blouse" foi listado no site
    Wait Until Element Is Visible     ${produtos.Blouse}
    
abrir navegador
    Open Browser  browser=chrome 

fechar navegador
    Close Browser

Conferir mensagem "No results were found for your search "${mensagem}""
    Wait Until Element Is Visible       //*[contains(text(),'${mensagem}')]

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                          //*[text()='Women'][@title='Women']

Clicar na sub categoria "Summer Dresses"
     Click Element                       (//*[text( )='Summer Dresses'][@title='Summer Dresses'])[1]

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element is Visible       //span[contains(text(),'Summer Dresses ')]

Clicar em "Sign in"
    Click Element                       //a[@title='Log in to your customer account']

Informar um e-mail válido
    ${EMAILFAKE}                FakerLibrary.Email
    Input Text          id=email_create     ${EMAILFAKE}

Clicar em "Create an account"
    Click Element       id=SubmitCreate

Preencher os dados obrigatórios
    Wait Until Element is Visible       xpath=//input[@id='id_gender2']
    Click Element                       xpath=//input[@id='id_gender2']
    Input Text                          id=customer_firstname       Lorrainny
    Input Text                          id=customer_lastname        Ferreira
    Input Password                      id=passwd                   Wn.85994512
    Select From List By Value           id=days                     26
    Select From List By Value           id=months                   6
    Select From List By Value           id=years                    1987
    Click Element                       id=newsletter
    Input Text                          id=firstname                Lorrainny
    Input Text                          id=lastname                 Ferreira
    Input Text                          id=company                  Prime Control
    Input Text                          id=address1                 Rua Paulo de Frontin, 1234
    Input Text                          id=address2                 Complemento
    Input Text                          id=city                     Curitiba
    Select From List By Value           id=id_state                 1
    Input Text                          id=postcode                 12345
    Select From List By Value           id=id_country               21
    Input Text                          id=phone                    3333-9999
    Input Text                          id=alias                    Rua dos beija flores, 517

Submeter cadastro
    Click Element       id=submitAccount

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element is Visible      //*[contains(text(),'Welcome to')]
    