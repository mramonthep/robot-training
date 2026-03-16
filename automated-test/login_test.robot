*** Settings ***
Resource    ../resources/login_keywords.robot

*** Test Cases ***
Login success
    Openbrowser and Login
    Wait Until Page Contains    Products    10s
    Close Browser

Login with wrong password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=user-name    standard_user
    Input Text      id=password     wrong_password
    Click Element   id=login-button
    Page Should Contain    Epic sadface
    Close Browser

Login with empty fields
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element   id=login-button
    Page Should Contain    Username is required
    Close Browser
