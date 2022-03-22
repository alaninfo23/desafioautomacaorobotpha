*** Settings ***
Documentation    Keywords referente aos testes da home

*** Keywords ***
#Cenário: Listar Produtos
Dado que o cliente esteja na tela home do site
#Utilizamos a keyword Title Should Be para validar o titulo da pagina.
    Title Should Be                  ${HOME.TITULO}
#Utilizamos a keyword Title Should Be para garantir que alguma coisa esteja carregada.
    Wait Until Element Is Visible    ${HOME.MENU}
Quando passar o mouse por cima da categoria Women no menu principal superior de categorias
    Mouse Over    xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a
    Wait Until Element Is Visible    xpath=(//a[contains(@title,'Summer Dresses')])[1]
Então clicar na subcategoria Summer Dresses e conferir se os produtos foram mostrados na pagina
#Utilizamos a keyword Click Element para clicar em cima de qualquer coisa.
    Click Element    xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/ul/li[2]/ul/li[3]/a
    Wait Until Element Is Visible    xpath=(//div[@class='product-count'])[1]

Faker Library exemplo
    ${cpf}       fakerLibrary.cpf
    ${nome}      fakerLibrary.name
    ${cidade}    fakerLibrary.city

    Log To console    O CPF é: ${cpf}
    Log To console    O nome é: ${nome}
    Log To console    A cidade é: ${cidade}