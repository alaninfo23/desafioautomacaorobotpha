*** Settings ***
Documentation    Mapeamento dos elementos da tela de busca

*** Variables ***
&{BUSCA}
...    PRODUTO=//*[@class='price product-price']/ancestor::*[@class='product-image-container']
...    IMAGEM_PRODUTO=//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

${MENSAGEM}=    //p[@class="alert alert-warning"]