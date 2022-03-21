#toda vez que iniciar um novo arquivo robot deve começar declarando as configurações
*** Settings ***
#também deve ser informado para que serve esse documento
Documentation    Aqui estarão presentes todos os cenários de automação WEB.

#aqui deve ser inserido o caminho do arquivo de pacotes necessários para funcionamento
Resource    ../../src/config/package.robot

#chamada de função para abrir browser
Test Setup       Abrir sessão
#chamada de função para fechar browser
Test Teardown    Fechar sessão 

#aqui criaremos os casos de testes em BDD
*** Test Cases ***
#Cenario: Pesquisando um produto com sucesso
    #Dado que o cliente esteja na tela home do site
    #quando realizar a pesquisa de um produto
    #Então o produto deve ser apresentado com sucesso

#Cenário: Pesquisando um produto inexistente
#    Dado que o cliente esteja na tela home do site
#    Quando realizar a pesquisa do produto       calça
#    Então é apresentado a mensagem              No results were found for your search "calça"

Cenário: Listar Produtos
    Dado que o cliente esteja na tela home do site
    Quando passar o mouse por cima da categoria Women no menu principal superior de categorias
    Então clicar na subcategoria Summer Dresses e conferir se os produtos foram mostrados na pagina