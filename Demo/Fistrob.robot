*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    ${appUrl}   ${browser}
Test Teardown    Close Browser

*** Variables ***
${appUrl}    https://opensource-demo.orangehrmlive.com/
${browser}   Chrome


*** Test Cases ***
    
Valid Login Test
    [Tags]    Smoke      
    Maximize Browser Window
    Input Text    id:txtUsername    Admin
    Input Text    xpath://input[@id='txtPassword']    admin123
    Click Button    xpath://input[@id='btnLogin']
    ${url}  Get Location    
    Log To Console    ${url}
    Should Contain    ${url}    dashboard
    

InValid Login Test
    [Tags]    Regression     
    Maximize Browser Window
    Input Text    id:txtUsernam    Admin
    Input Text    xpath://input[@id='txtPassword']    admin125
    Click Button    xpath://input[@id='btnLogin']
    ${url}  Get Location    
    Log To Console    ${url}
    Should Contain    ${url}    dashboard
    
                    