*** Settings ***
Library    Browser

*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}    ${expected}
    New Browser    chromium    headless=False
    New Page    https://the-internet.herokuapp.com/login

    Fill Text    id=username    ${username}
    Fill Text    id=password    ${password}
    Click        css=button[type="submit"]

    IF    '${expected}' == 'PASS'
        Get Url    contains    /secure
    ELSE
        Get Url    contains    /login
    END

    Close Browser
