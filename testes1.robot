*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.saucedemo.com/
${USERNAME}  standard_user
${USERNAME_INCORRETO}  standard_
${PASSWORD}  secret_sauce
${PASSWORD_INCORRETO}  secret_s
${USERNAME_BLOQUEADO}  locked_out_user
${EMPTY_STRING} 


*** Test Cases ***
Validar acesso correto
    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window

    Input Text      id=user-name      ${USERNAME}
    Input Text      id=password       ${PASSWORD}
    Click Button    id=login-button


Validar acesso Login incorreto
   Open Browser    ${URL}    browser=Chrome
   Maximize Browser Window
   
   Input Text      id=user-name      ${USERNAME_INCORRETO}
   Input Text      id=password       ${PASSWORD}
   Click Button    id=login-button
  

Validar senha incorreta
   Open Browser    ${URL}    browser=Chrome
   Maximize Browser Window
   
   Input Text      id=user-name      ${USERNAME}
   Input Text      id=password       ${PASSWORD_INCORRETO}
   Click Button    id=login-button


Validar user em branco
   Open Browser    ${URL}    browser=Chrome
   Maximize Browser Window
   
   Input Text      id=user-name      ${EMPTY_STRING}
   Input Text      id=password       ${PASSWORD}
   Click Button    id=login-button
   # Verificação da mensagem de erro
   Element Should Be Visible    xpath=//h3[contains(text(),'Epic sadface: Username is required')]


Validar password branco
   Open Browser    ${URL}    browser=Chrome
   Maximize Browser Window
   
   Input Text      id=user-name      ${USERNAME}
   Input Text      id=password        ${EMPTY_STRING}
   Click Button    id=login-button
   # Verificação da mensagem de erro
   Element Should Be Visible    xpath=//h3[contains(text(),'Epic sadface: Password is required')]


Validar usuario bloqueado
   Open Browser    ${URL}    browser=Chrome
   Maximize Browser Window
   
   Input Text      id=user-name      ${USERNAME_BLOQUEADO}
   Input Text      id=password       ${PASSWORD}
   Click Button    id=login-button
   # Verificação da mensagem de erro
   Element Should Be Visible    xpath=//h3[contains(text(),'Sorry, this user has been locked out.')]
  
