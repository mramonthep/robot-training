
*** Settings ***
Resource    ../resources/login_keywords.robot
Library     Collections
Library     String
*** Test Cases ***
Sort Products Low to High
    Openbrowser and Login
    Select From List By Value    css=.product_sort_container    hilo
    ${prices}=    Get WebElements    css=.inventory_item_price
    ${price_list}=    Create List
    FOR    ${price}    IN    @{prices}
        ${text}=    Get Text    ${price}
        ${text}=    Replace String    ${text}    $    ${EMPTY}
        ${text}=    Convert To Number    ${text}
    Append To List    ${price_list}    ${text}
    END
    ${sorted}=    Copy List    ${price_list}
    Sort List    ${sorted}
    Lists Should Be Equal    ${price_list}    ${sorted}     
    Close Browser
