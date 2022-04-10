*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${username}  admin
${pass}  12345
${name}  Sree
${phone}  8877665544
${age}  23
${add}  fgbe thg g htdrytyjt d rgtry r
${date}  11-11-2021
${place}  Chennai
${pin}  600043

*** Test Cases ***
Patient Login Test
    [Documentation]  patient login
    [Tags]  patient
    Open Browser  http://127.0.0.1:5000/  chrome
    Maximize Browser Window
    Add Admin
    Add Pass
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[3]/td[2]/button
    sleep  1s


Patient Dashboard Test
    [Documentation]  patient dashboard
    [Tags]  patient
    Add Name
    Add Phone
    Add age
    Add address
    Add date
    Add place
    Add pin
    sleep  3s
    Click Element  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[8]/td[2]/button
    sleep  5s

Patient Search Test
    [Documentation]  patien search
    [Tags]  patient
    Click Element  xpath=//html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    Add Phone
    sleep  2s
    Click Element  xpath=//html/body/div[1]/div/div[2]/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

Patient Edit Test
    [Documentation]  patient edit
    [Tags]  patient
    Click Element  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  1s
    Add Phone
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    sleep  2s
    Add Name
    Add Phone
    Add age
    Add address
    Add date
    Add place
    Add pin
    sleep  3s
    Click Element  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[8]/td[2]/button
    sleep  5s




Patient Delete Test
    [Documentation]  patient delete
    [Tags]  patient
    Click Element  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  2s
    sleep  1s
    Add Phone
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    sleep  2s
    Click Element  xpath=//html/body/nav/div/div/ul/li[5]/a
    sleep  5s

Logout Test
    [Documentation]  logout
    [Tags]  patient
    Click Element  xpath=//html/body/nav/div/div/ul/li[7]/a
    sleep  2s
    Close Browser


*** Keywords ***
Add Admin
    Input Text  name:uname  ${username}

Add Pass
    Input Text  name:pass  ${pass}

Add Name
    Input Text  name:name  ${name}

Add Phone
    Input Text  name:mno  ${phone}

Add age
    Input Text  name:age  ${age}

Add address
    Input Text  name:add  ${add}

Add date
    Input Text  name:dob  ${date}

Add place
    Input Text  name:place  ${place}

Add pin
    Input Text  name:pin  ${pin}