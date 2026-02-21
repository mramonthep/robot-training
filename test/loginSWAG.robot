*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}        https://www.saucedemo.com/
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
*** Test Cases ***
Login Success
    Open Browser    ${URL}    chrome

    Input Text       id=user-name     ${USERNAME} 
    Input Text       id=password      ${PASSWORD} 
    Click button          id=login-button

    Location Should Contain    inventory

    Close Browser