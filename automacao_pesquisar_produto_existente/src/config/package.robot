*** Settings ***
Documentation    Arquivo de Mapeamento de Arquivos e Bibliotecas

Library    SeleniumLibrary
Library    DebugLibrary
Library    FakerLibrary     locale=pt_BR


Resource     hooks.robot
Variables    hooks.yaml

Resource    ../auto/keywords/kws_webautomation.robot
Resource    ../auto/elements/busca.robot
Resource    ../auto/elements/home.robot

Variables   ../auto/data/busca.yaml
