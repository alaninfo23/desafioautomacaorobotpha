*** Settings ***
Documentation    Keywords referente aos testes da home

*** Keywords ***
Dado que o cliente esteja na tela home do site
    Title Should Be                  ${HOME.TITULO}
    Wait Until Element Is Visible    ${HOME.MENU}

Quando realizar a pesquisa de um produto
    Input Text       ${HOME.SEARCH}           ${BUSCA_BLOUSE}
    Click Element    ${HOME.BTN_PESQUISAR}

Então o produto deve ser apresentado com sucesso
    Wait Until Element Is Visible    ${BUSCA.PRODUTO}
    Page Should Contain image        ${BUSCA.IMAGEM_PRODUTO}

Quando realizar a pesquisa do produto
    [Arguments]    ${produto}

    Input Text       ${HOME.SEARCH}           ${produto}
    Click Element    ${HOME.BTN_PESQUISAR}

Então é apresentado a mensagem
    [Arguments]    ${mensagem_erro}

    Wait Until Element Is Visible    ${MENSAGEM}
    ${texto}                         Get Text       ${MENSAGEM}
    Should Be Equal As Strings       ${texto}       ${mensagem_erro}


Faker Library exemplo

    ${cpf}       fakerLibrary.cpf
    ${nome}      fakerLibrary.name
    ${cidade}    fakerLibrary.city

    Log To console    O CPF é: ${cpf}
    Log To console    O nome é: ${nome}
    Log To console    A cidade é: ${cidade}




  