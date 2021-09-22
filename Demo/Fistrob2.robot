*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    ${appUrl}   ${browser}
Test Teardown    Close Browser

*** Variables ***
${appUrl}    https://opensource-demo.orangehrmlive.com/
${browser}    Chrome


*** Test Cases ***
    
Valid Login Test
    [Tags]    Smoke      
    Maximize Browser Window
    Enter Username
    Enter Password
    Click on Login Button
    Verify the url   
    
*** Keywords ***
Enter Username
    Input Text    id:txtUsername    Admin
    
Enter Password
    Input Text    xpath://input[@id='txtPassword']    admin123
    
Click on Login Button
    Click Button    xpath://input[@id='btnLogin']
    
Verify the url
    ${url}  Get Location    
    Log To Console    ${url}
    Should Contain    ${url}    dashboard
    
    
    
    
    
                    