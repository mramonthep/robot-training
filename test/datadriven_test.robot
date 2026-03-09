*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
library    String
Resource   ../resources/login_keywords.robot

*** Test Cases ***
Login With Multiple Users
    ${file}=    Get File    C:/robot_training/test_data/users.csv
    @{lines}=   Split To Lines    ${file}

    FOR    ${line}    IN    @{lines}[1:]
        ${parts}=    Split String    ${line}    ,
        ${username}=    Set Variable    ${parts}[0]
        ${password}=    Set Variable    ${parts}[1]

        Openbrowser and Login by    ${username}    ${password}
        Page Should Contain    Products
        Close Browser Session
    END