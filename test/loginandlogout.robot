*** Settings ***
Library    Browser

*** Variables ***
${URL}          https://www.jobthai.com/%E0%B8%AB%E0%B8%B2%E0%B8%87%E0%B8%B2%E0%B8%99
${USERNAME}     bestvipera@gmail.com
${PASSWORD}     #Best41348
${SUCCESS_MSG}  You logged into a secure area!

*** Test Cases ***
Login success
    New Browser    chromium    headless=False
    New Page       ${URL}
    Click          css=a[href="/login?page=resumes&amp;l=th">]
    Fill Text      id=username    ${USERNAME}
    Fill Text      id=password    ${PASSWORD}
    Click          css=button[type="submit"]

    Wait For Elements State    id=flash    visible
    ${text}=    Get Text    id=flash
    Should Contain    ${text}    ${SUCCESS_MSG}

    Wait For Elements State    css=a[href="/logout"]    visible
    Get Url    ==    https://the-internet.herokuapp.com/secure
    Click          css=a[href="/logout"]
    Close Browser
