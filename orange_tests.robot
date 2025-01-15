*** Settings ***
Library    SeleniumLibrary
Suite Setup  Logar no Sistema
Suite Teardown  Fechar Sistema

*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}  Admin
${PASSWORD}  admin123

*** Keywords ***
Logar no Sistema
    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window
     Sleep    5
    Input Text      //input[@name='username']      ${USERNAME}
    Input Text      //input[@name='password']       ${PASSWORD}
    Click Button    //button[@type='submit']   
    Sleep    10

Fechar Sistema
 #clicar no botao logout do Sistema
    Click Element    //img[@src='/web/index.php/pim/viewPhoto/empNumber/7']
    Sleep    3
    Click Link   //a[@href="/web/index.php/auth/logout"]


*** Test Cases ***

Validar Menu vertical
     Click Link   //a[@href="/web/index.php/admin/viewAdminModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Admin"]   timeout=10
     
     Click Link   //a[@href="/web/index.php/pim/viewPimModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="PIM"]   timeout=10

     Click Link   //a[@href="/web/index.php/leave/viewLeaveModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Leave"]   timeout=10

    Click Link   //a[@href="/web/index.php/recruitment/viewRecruitmentModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Recruitment"]   timeout=10

    Click Link   //a[@href="/web/index.php/pim/viewMyDetails"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="PIM"]   timeout=10

    Click Link   //a[@href="/web/index.php/performance/viewPerformanceModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Performance"]   timeout=10


      Click Link   //a[@href="/web/index.php/dashboard/index"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Dashboard"]   timeout=10

     Click Link   //a[@href="/web/index.php/directory/viewDirectory"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Directory"]   timeout=10

    # Click Link   //a[@href="/web/index.php/maintenance/viewMaintenanceModule"]
    #  Sleep    5
    #  Wait Until Element Is Visible    //h6[text()="Maintenance"]   timeout=10

    Click Link   //a[@href="/web/index.php/claim/viewClaimModule"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Claim"]   timeout=10

    Click Link   //a[@href="/web/index.php/buzz/viewBuzz"]
     Sleep    5
     Wait Until Element Is Visible    //h6[text()="Buzz"]   timeout=10
     
