*** Settings ***
Library    RequestsLibrary

*** Variables ***
${URL}    https://api.test.com

*** Test Cases ***
Login Success
    Create Session    mysession    ${URL}
    ${response}=    POST On Session    mysession    /login    json={"email":"user@test.com","password":"123456"}
    Should Be Equal As Integers    ${response.status_code}    200
