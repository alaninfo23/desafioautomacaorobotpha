*** Settings ***
Documentation   Arquivo de Mapeamento de Arquivos e Bibliotecas

Library     SeleniumLibrary
Library     FakerLibrary

Resource    hooks.robot
Variables    hooks.yaml

Resource    ../auto/keywords/kws_webautomation.robot
Resource    ../auto/elements/home.robot
Resource    ../auto/elements/cadastro.robot

Variables   ../auto/data/busca.yaml