*** Settings ***
Documentation   Aqui estarão presentes todos os cenários de automação WEB.

Resource    ../../src/config/package.robot

Test Setup  Abrir sessão
Test Teardown   Fechar sessão


****Test Case ***

Cenário 04: Adicionar cliente
    Dado que o cliente esteja na tela do site
    Quando clicar em Singn in, informar email válido, criar conta, preencher dados e submeter cadastro
    Então conferir se o cadastro foi efetuado com sucesso