*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variables.robot

*** Keywords ***
Openbrowser and Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=user-name    ${USERNAME}
    Input Text      id=password     ${PASSWORD}
    Click Element   id=login-button

Openbrowser and Login by
    [Arguments]    ${username}    ${password}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=user-name    ${username}
    Input Text      id=password     ${password}
    Click Element   id=login-button

Close Browser Session
    Close Browser