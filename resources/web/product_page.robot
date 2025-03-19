*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Add Product To Cart
    [Arguments]    ${product_id}
    Click Button    id=${product_id}
    Capture Page Screenshot   product_page.png
    Click Element    id=shopping_cart_container
