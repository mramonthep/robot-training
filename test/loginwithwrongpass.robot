*** Settings ***
Library    Browser

*** Variables ***
${URL}        https://the-internet.herokuapp.com/login
${USERNAME}   
${PASSWORD}   
${ERROR_MSG}  Your username is invalid!

*** Test Cases ***
Login with empty field
    New Browser    chromium    headless=False
    New Page       ${URL}

    Fill Text      id=username    ${USERNAME}
    Fill Text      id=password    ${PASSWORD}
    Click          css=button[type="submit"]

    Wait For Elements State    id=flash    visible
    ${text}=    Get Text    id=flash
    Should Contain    ${text}    ${ERROR_MSG}
    Close Browser
