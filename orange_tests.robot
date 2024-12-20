*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME}  Admin
${PASSWORD}  admin123

*** Test Cases ***
Realizar Login
    Open Browser    ${URL}    browser=Chrome
    Maximize Browser Window

    Input Text      //input[@name='username']      ${USERNAME}
    Input Text      //input[@name='password']       ${PASSWORD}
    Click Button    //button[@type='submit']

# Validar se o item 'Leave' aparece no menu vertical após clicar em 'Asign Leave' no menu horizontal.
#     Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button") and @title='Assign Leave']    timeout=10  
#     Click Element    //button[contains(@class, "oxd-icon-button") and @title='Assign Leave']
#     Wait Until Element Is Visible    //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10
#     # Aguardar até que o item 'Dashboard' esteja visível antes de clicar
#     Wait Until Element Is Visible    //a[contains(@class, 'oxd-main-menu-item active')]   timeout=10
#     Click Element    //a[contains(@class, 'oxd-main-menu-item active')]
#     Wait Until Element Is Visible   //div[contains(@class, "oxd-text oxd-text--p") and @title='Quick Launch']


# Validar se o item 'Leave' aparece no menu vertical após clicar em 'Leave List' no menu horizontal.
#      Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Leave List']    timeout=30
#     Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Leave List'] 
#      Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10


    # #   Validar se o item 'Time' aparece no menu vertical após clicar em 'Timesheets' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Timesheets']    timeout=30
      #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Timesheets'] 
    #  Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item active')]    timeout=10


    # #   Validar se o item 'Leave' aparece no menu vertical após clicar em 'Apply Leave' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Apply Leave']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Apply Leave'] 
    #  Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10




    # #   Validar se o item 'Leave' aparece no menu vertical após clicar em 'My Leave' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Leave']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Leave'] 
    #  Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10



    # #   Validar se o item 'Time' aparece no menu vertical após clicar em 'My Timesheets' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Timesheet']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Timesheet'] 
    # Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item active')]    timeout=10

    ###############################################################

    #Validacao 2


# Validar se o item 'Leave' aparece no menu vertical após clicar em 'Asign Leave' no menu horizontal.
#     Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button") and @title='Assign Leave']    timeout=10  
#     Click Element    //button[contains(@class, "oxd-icon-button") and @title='Assign Leave']
#     Log    Aguardando o item 'Assign Leave' na barra de navegação
#     Wait Until Element Is Visible    //a[contains(@class, 'oxd-topbar-body-nav-tab-link --more') and contains(text(), 'Assign Leave')]    timeout=30
  
 

#  # Aguardar até que o item 'Dashboard' esteja visível antes de clicar
#     Wait Until Element Is Visible    //a[contains(@class, 'oxd-main-menu-item active')]   timeout=10
#     Click Element    //a[contains(@class, 'oxd-main-menu-item active')]
#     Wait Until Element Is Visible   //div[contains(@class, "oxd-text oxd-text--p") and @title='Quick Launch']


# Validar se o item 'Leave List' aparece no menu horizontal após clicar em 'Leave List' no menu vertical.
#      Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Leave List']    timeout=30
#     Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Leave List'] 
#      Wait Until Element Is Visible  //a[contains(@class, 'oxd-topbar-body-nav-tab-item') and @title='Leave List']     timeout=10


    #   Validar se o item 'Time' aparece no menu vertical após clicar em 'Timesheets' no menu horizontal.
     Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Timesheets']    timeout=30
       Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Timesheets'] 
     Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item active')]    timeout=10


    # #   Validar se o item 'Leave' aparece no menu vertical após clicar em 'Apply Leave' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Apply Leave']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='Apply Leave'] 
    #  Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10




    # #   Validar se o item 'Leave' aparece no menu vertical após clicar em 'My Leave' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Leave']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Leave'] 
    #  Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item') and contains(@class, 'active')]    timeout=10



    # #   Validar se o item 'Time' aparece no menu vertical após clicar em 'My Timesheets' no menu horizontal.
    #  Wait Until Element Is Visible    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Timesheet']    timeout=30
    #  Click Element    //button[contains(@class, "oxd-icon-button orangehrm-quick-launch-icon") and @title='My Timesheet'] 
    # Wait Until Element Is Visible  //a[contains(@class, 'oxd-main-menu-item active')]    timeout=10

    