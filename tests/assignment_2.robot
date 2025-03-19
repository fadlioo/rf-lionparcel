*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/web/login_page.robot
Resource    ../resources/web/product_page.robot
Resource    ../resources/web/cart_page.robot
Resource    ../resources/web/checkout_page.robot
Suite Setup    Open Login Page
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${PRODUCT_ID}  add-to-cart-sauce-labs-backpack
${FIRST_NAME}  Padli
${LAST_NAME}   Gantenk
${POSTAL_CODE}  12345

*** Test Cases ***
User Journey - Shopping Cart Checkout
    Login    ${USERNAME}    ${PASSWORD}
    Add Product To Cart    ${PRODUCT_ID}
    Proceed To Checkout
    Complete Order    ${FIRST_NAME}    ${LAST_NAME}    ${POSTAL_CODE}
