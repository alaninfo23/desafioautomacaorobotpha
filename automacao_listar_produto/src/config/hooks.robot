*** Settings ***
Documentation    Arquivo de Setup e Teardown

*** Keywords ***

#funcão que abre a sessao com valores que estão inseridos no arquivo hooks.yaml
Abrir sessão
    Open Browser               url:blank                ${CONFIG.BROWSER.NOME}
    Go To                      ${CONFIG.BROWSER.URL}
    Maximize Browser Window
    Set Selenium Timeout       ${CONFIG.TIMEOUT}

#função que tira print da ultima tela que foi atualizada e fecha o navegador
Fechar sessão
    Capture Page Screenshot
    Close Browser