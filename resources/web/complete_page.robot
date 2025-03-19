*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Order Completion
    Wait Until Page Contains    THANK YOU FOR YOUR ORDER
