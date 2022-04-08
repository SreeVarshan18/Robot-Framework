*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email}  sree.varshan06@gmail.com
${password}  123456
${username}  admin
${pass}  9875
${name}  Sree
${auth}  Sree
${cat}  fantasy
${price}  2000
${pub}  Sree
${newname}  Purple
${book}  Game Of Thrones

*** Test Cases ***
User Login Test
    [Documentation]  user login
    [Tags]  user
    Open Browser  http://127.0.0.1:5000/  chrome
    Maximize Browser Window
    Add Email
    Add Password
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button


Admin Login Test
    [Documentation]  admin login
    [Tags]  admin
    Add Admin
    Add Pass
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button


Dashboard Test
    [Documentation]  dashboard
    [Tags]  user
    Add Book Name
    Add Author
    Add Category
    Add Price
    Add Publisher
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/center/button
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/div/div/div/div[3]/button[2]
    sleep  5s


Edit Test
    [Documentation]  edit page
    [Tags]  user
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    Add Book
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/center/button
    sleep  4s
    Click Link  name:link
    sleep  2s
    Add New Name
    Add Author
    Add Category
    Add Price
    Add Publisher
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/center/button
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/div/div/div/div[3]/button[2]


Delete Test
    [Documentation]  delete page
    [Tags]  user
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[5]/a
    sleep  1s
    Add New Name
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/center/button
    sleep  2s
    Click Element  xpath=//html/body/div[2]/div/div[2]/form/div/div/div/div[3]/button[2]
    sleep  2s

Logout Test
    [Documentation]  logout
    [Tags]  user
    Click Element  xpath=//html/body/div[1]/div/div/nav/div/div/ul/li[6]/a
    sleep  2s
    Click Element  xpath=//html/body/nav/div/div/ul/li/a
    sleep  2s
    Close Browser


*** Keywords ***
Add Email
    Input Text  name:email  ${email}

Add Password
    Input Text  name:pass  ${password}

Add Admin
    Input Text  name:uname  ${username}

Add Pass
    Input Text  name:pass  ${pass}

Add Book Name
    Input Text  name:name  ${name}

Add Author
    Input Text  name:auth  ${auth}

Add Category
    Input Text  name:cat  ${cat}

Add Price
    Input Text  name:price  ${price}

Add Publisher
    Input Text  name:pub  ${pub}

Add New Name
    Input Text  name:name  ${newname}

Add Book
    Input Text  name:name  ${book}