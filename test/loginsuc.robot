*** Settings ***
Library    Browser

*** Variables ***
${URL}          https://the-internet.herokuapp.com/login
${USERNAME}     tomsmith
${PASSWORD}     SuperSecretPassword!
${SUCCESS_MSG}  You logged into a secure area!

*** Test Cases ***
Login success
    New Browser    chromium    headless=False
    New Page       ${URL}

    Fill Text      id=username    ${USERNAME}
    Fill Text      id=password    ${PASSWORD}
    Click          css=button[type="submit"]

    Wait For Elements State    id=flash    visible
    ${text}=    Get Text    id=flash
    Should Contain    ${text}    ${SUCCESS_MSG}

    Wait For Elements State    css=a.button.secondary.radius    visible   # logout button
    Get Url    ==    https://the-internet.herokuapp.com/secure
    Click          css=a[href="/logout"]
    Close Browser
