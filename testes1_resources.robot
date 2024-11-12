*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}       https://www.saucedemo.com/
${USERNAME}  standard_user
${PASSWORD}  secret_sauce

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser

Realizar Login
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button
