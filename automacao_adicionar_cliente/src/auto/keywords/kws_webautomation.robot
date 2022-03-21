*** Settings ***
Documentation       Keywords referente aos testes da home

*** Keywords ***
Dado que o cliente esteja na tela do site
    Title Should Be                 ${HOME.TITULO}
    Wait Until Element Is Visible   ${HOME.MENU}

Quando realizar a pesquisa de um produto
    Input Text      ${HOME.SEARCH}        ${BUSCA.BLOUSE}
    Click Element   ${HOME.BNT_PESQUISAR}

Então o produto deve ser apresentado com sucesso
    Wait Until Element Is Visible   ${BUSCA.PRODUTO}
    Page Should Contain Image       ${BUSCA.IMAGEM_PRODUTO}
    Capture Page Screenshot

Quando realizar a pesquisa de um produto
    [Arguments]     ${produto}

    Input Text      ${HOME.SEARCH}      ${produto}
    Click Element   ${HOME.BNT_PESQUISAR}

Então é apresentado a mensagem de
    [Arguments]     ${mensagem_erro}
    
    Wait Until Element Is Visible   ${MENSAGEM}

    ${texto}    Get Text    ${MENSAGEM}
    Should Be Equal As Strings      ${texto}    ${MENSAGEM}