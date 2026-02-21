*** Settings ***
Library    Browser

*** Test Cases ***
Open Google And Verify Title
    New Browser    chromium    headless=False
    New Page       https://www.google.com
    Get Title      ==    Google
    Close Browser
