*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://demo.automationtesting.in/Register.html
${FIRSTNAME}  Lis
${LASTNAME}  Tavares
${ADDRESS}  RUA 123, 1 - SAO PAULO/SP
${EMAIL}  teste@teste.com
${PHONE}  11999999998
${LANGUAGE}  Portuguese
${SKILLS}  Phyton
${COUNTRY}  Australia
${YEAR}  1979
${MONTH}  June
${DAY}  4
${PASSWORD}  Teste123
${FILE}  SCR-20241029-m8h.png


*** Test Cases ***
Validar preenchimento de formulario 

    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window

    # Preenchimento de campos
    Input Text      //input[@placeholder = "First Name"]     ${FIRSTNAME}
    Input Text      //input[@placeholder= "Last Name"]     ${LASTNAME}
    Input Text      //textarea[@ng-model="Adress"]   ${ADDRESS}
    Input Text      //input[@ng-model="EmailAdress"]   ${EMAIL}
    Input Text      //input[@ng-model="Phone"]  ${PHONE} 

    # Seleção de gênero
    Select Radio Button  radiooptions  FeMale
    
    # Seleção de checkbox
    Select Checkbox  //input[@id="checkbox2"]

    # Clicar no dropdown de idiomas

    Click Element   //div[@id="msdd"]
    Click Element   //div[@id="msdd"]
    Sleep    2 
    Click Element   //a[text()="Bulgarian"]
    Click Element    //body
    
     # Seleção de Skills
      Click Element     //select[@id="Skills"]
      Click Element  //select[@id="Skills"]
      Sleep    5 
      Click Element   //option[text()="Python"]


 # Seleção de País
    #Select From List By Index    xpath=//*[@id="basicBootstrapForm"]/div[10]/div/span/span[1]/span    ${COUNTRY}

 #Seleção de datas 
   Select From List By Label    //select[@id="yearbox"]   ${YEAR} 
   Select From List By Label    //select[@ng-model="monthbox"]    ${MONTH}  
   Select From List By Label    //select[@id="daybox"]   ${DAY}

# Upload de Arquivo
    Choose File     //input[@id="imagesrc"]       ${EXECDIR}/Arquivo/image.png
    Sleep    5

      #Preenchimento de senhas
    Input Text      //input[@id="firstpassword"]   ${PASSWORD}
    Input Text      //input[@id="secondpassword"]  ${PASSWORD}
    Click Element    //body

  
    Click Button    //button[@id="submitbtn"]