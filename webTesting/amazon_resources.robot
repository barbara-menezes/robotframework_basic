*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                             https://www.amazon.com.br
${MENU_ELETRONICOS}                //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics']
${HEADER_ELETRONICOS}              (//span[contains(.,'Eletrônicos e Tecnologia')])[1]
${TEXTO_RESULTADOS}                (//span[contains(.,'1-48 de mais de 2.000 resultados para')])[2]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=googlechrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    time_=25s
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletronicos"
    Click Element    locator=${MENU_ELETRONICOS}
    
Verificar se aparece a frase "${TEXTO}"
    Wait Until Page Contains    text=${TEXTO}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//div[@class='a-cardui-footer dcl-card-footer'][contains(.,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox   text=${PRODUTO}

Clicar no botao de pesquisa
    Click Button    locator=nav-search-submit-button

Verificar o resultado da pesquisa
    Wait Until Element Is Visible    locator=${TEXTO_RESULTADOS}
