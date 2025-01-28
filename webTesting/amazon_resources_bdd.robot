*** Settings ***
Library    SeleniumLibrary
Resource   amazon_resources.robot

*** Keywords ***
# Gherking Steps
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletronicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página com a categoria "Computadores e Informática"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "xbox Series S" no campo de pesquisa
    Clicar no botao de pesquisa

Então o resultado pesuisa do produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa