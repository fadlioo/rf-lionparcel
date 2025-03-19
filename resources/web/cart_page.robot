*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Proceed To Checkout
    Capture Page Screenshot   cart_page.png
    Click Button    id=checkout
