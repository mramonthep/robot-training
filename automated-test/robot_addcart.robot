*** Settings ***
Resource    ../resources/login_keywords.robot
*** Test Cases ***
Add Product To Cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text      id=user-name    standard_user
    Input Text      id=password     secret_sauce
    Click Element         id=login-button

    Wait Until Element Is Visible    id=add-to-cart-sauce-labs-bike-light    10s
    Click Element         id=add-to-cart-sauce-labs-bike-light

    Click Element         id=shopping_cart_container
    Wait Until Element Is Visible    css=.cart_item    10s
    ${item_name}=      Get Text    css=.inventory_item_name
    Should Be Equal    ${item_name}    Sauce Labs Bike Light

    Close Browser
