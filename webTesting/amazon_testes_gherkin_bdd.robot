*** Settings ***
Documentation    Essa suite testa o site da amazon.com.br
Resource         amazon_resources_bdd.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste verifica o menu Eletronicos do site amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página com a categoria "Computadores e Informática"
Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de produto
    [Tags]             busca_produtos        lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o resultado pesuisa do produto da linha "Xbox Series S" deve ser mostrado na página