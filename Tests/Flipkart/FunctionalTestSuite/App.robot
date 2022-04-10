*** Settings ***
Library  SeleniumLibrary

Suite Setup  Log  test suite setup

Suite Teardown  Log  test suite teardown

Test Setup  Log  test case setup

Test Teardown  Log  test case teardown
*** Variables ***
${web}  https://www.google.co.in/
${search}   flipkart
${search_flip}  iphone

*** Test Cases ***
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
    Click Element  class:LC20lb
    sleep  1s


Flipkart Test
    [Documentation]  Flipkart search page
    [Tags]  Internet
    Click Element  class:_2doB4z
    Search Flipkart
    sleep  1s
    Click Button  class:L0Z3Pu

Purchase Item Test
    [Documentation]  Flipkart item page
    [Tags]  Internet
    sleep  1s
    Click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  1s
    Switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep  1s
    Click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  5s
    Close Browser

*** Keywords ***
Search Data
    Input Text  name:q  ${search}

Search Flipkart
    Input Text  name:q  ${search_flip}