*** Settings ***
Documentation       Keywords referente aos testes da home

*** Keywords ***

Dado que o cliente esteja na tela do site
    Title Should Be                 ${home.titulo}
    Wait Until Element Is Visible   ${home.menu}

Quando clicar em Singn in, informar email válido, criar conta, preencher dados e submeter cadastro
#Clicar em Singn-in
    Click Element    xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a
#Informar um e-mail válido
    Input Text     id=email_create   ${email}
#Clicar em "Create an account"
    Click Element    xpath=//*[@id="SubmitCreate"]
#Preencher os campos obrigatórios
    Wait Until Element Is Visible    xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
    Click element    xpath=(//input[@value='1'])[1]
    Input Text    id=customer_firstname    ${nome}
    Input Text    id=customer_lastname    ${sobrenome}
    Input Text    id=passwd    ${senha}
    Click Element    id=days
    Mouse Over    id=days
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[1]/div/select/option[19]
    Click Element    id=months
    Mouse Over    id=months
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[2]/div/select/option[3]
    Click Element    id=years
    Mouse Over    id=years
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[3]/div/select/option[42]
    Input Text    id=firstname    ${nome}
    Input Text    id=lastname    ${sobrenome}
    Input Text    id=address1    ${endereço} num: ${numero}
    Input Text    id=address2    ${bairro}
    Input Text    id=city    ${cidade}
    Click Element    id=id_country
    Mouse Over    id=id_country
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[9]/div/select/option[2]
    Click Element    id=id_state
    Mouse Over    id=id_state
    Click Element    xpath=/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[7]/div/select/option[6]
    Input Text    id=postcode    ${cep}
    Input Text    id=phone_mobile    ${fone}
    Input Text    id=alias    ${referencia}
#Finalizar o cadastro
    Click Element    xpath=//span[contains(.,'Register')]
Então conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="cart_title"]
