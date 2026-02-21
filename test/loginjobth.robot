*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${USERNAME}   standard_user
${PASSWORD}   secret_sauce

*** Test Cases ***
Login success
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Element    id=login-button
    Wait Until Page Contains    Product    10s
    Close Browser
  
  