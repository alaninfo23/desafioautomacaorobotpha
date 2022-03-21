*** Settings ***
Documentation    Aqui estarão presentes todos os cenários de automação WEB.

Resource    ../../src/config/package.robot

Test Setup       Abrir sessão
Test Teardown    Fechar sessão 


*** Test Cases ***
Cenario: Pesquisando um produto com sucesso
    Dado que o cliente esteja na tela home do site
    Quando realizar a pesquisa de um produto
    Então o produto deve ser apresentado com sucesso

Cenário: Pesquisando um produto inexistente
    Dado que o cliente esteja na tela home do site
    Quando realizar a pesquisa do produto       calça
    Então é apresentado a mensagem              No results were found for your search "calça"

