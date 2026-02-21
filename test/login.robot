*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Login Test With Multiple Data
    [Template]    Login Test
    wronguser    wrongpass               FAIL
    tomsmith     wrongpass               FAIL
    tomsmith     SuperSecretPassword!    PASS
