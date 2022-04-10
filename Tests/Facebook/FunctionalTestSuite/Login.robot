*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web}  https://www.google.co.in/
${search}   facebook

*** Test Cases ***
User Login Test
    Log  user Login
    [Documentation]  This is a test case for user login
    [Tags]   users


User Registration Test
    Log  user Registration
    [Documentation]  This is a test case for user registration
    [Tags]  users


Admin Login Test
    Log  Admin Login
    [Documentation]  This is a test case for admin login
    [Tags]  admin

Google Test
    [Documentation]  Google search page
    [Tags]  Internet
    Open Browser    ${web}   chrome
    Maximize Browser Window
    sleep  1s
    Search Data
    sleep  1s
    Submit Form
    sleep  1s
    Close Browser

*** Keywords ***
Search Data
    Input Text  name:q  ${search}