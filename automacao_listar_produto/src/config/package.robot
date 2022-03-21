*** Settings ***
Documentation    Arquivo de Mapeamento de Arquivos e Bibliotecas

#A biblioteca selenium serve para automatizar
Library    SeleniumLibrary
#A biblioteca debug serve para debugar o código, step-by-step.
Library    DebugLibrary
#A biblioteca Faker serve para gerar valores aleatórios(CPF, email, etc)
Library    FakerLibrary     locale=pt_BR

#Arquivos referente as configuracoes
Resource     hooks.robot
Variables    hooks.yaml

#caminhos
Resource    ../auto/keywords/kws_webautomation.robot
Resource    ../auto/elements/busca.robot
Resource    ../auto/elements/home.robot

#Arquivo referente ao valor da busca a ser pesquisada
Variables   ../auto/data/busca.yaml
