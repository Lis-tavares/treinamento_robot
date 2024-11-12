*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}       https://www.saucedemo.com/
${USERNAME}  standard_user
${PASSWORD}  secret_sauce

*** Test Cases ***
Realizar Login
    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window

    Input Text      //input[@id='user-name']      ${USERNAME}
    Input Text      //input[@id='password']       ${PASSWORD}
    Click Button    id=login-button

    #Adicionar itens no carrinho  
    Wait Until Element Is Visible    //button[@id='add-to-cart-sauce-labs-backpack']    5s
    Click Button                     //button[@id='add-to-cart-sauce-labs-backpack']

    Wait Until Element Is Visible    //button[@id='add-to-cart-sauce-labs-bike-light']    5s
    Click Button                     //button[@id='add-to-cart-sauce-labs-bike-light']   

    #Acessar o carrinho
    Click Element    //div[@id='shopping_cart_container']

    #Conferir itens que foram inseridos no carrinho
    Element Should Be Visible   //div[text()='Sauce Labs Backpack']
    Element Should Be Visible   //div[text()='Sauce Labs Bike Light']