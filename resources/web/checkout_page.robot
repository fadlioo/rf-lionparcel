*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${complete_header}    css=.complete-header
*** Keywords ***
Complete Order
    [Arguments]    ${first_name}    ${last_name}    ${postal_code}
    Input Text    id=first-name    ${first_name}
    Input Text    id=last-name    ${last_name}
    Input Text    id=postal-code    ${postal_code}
    Capture Page Screenshot   filled_order_page.png
    Click Button    id=continue
    Click Button    id=finish
    Capture Page Screenshot   order_complete.png
    Element Text Should Be    ${complete_header}     Thank you for your order!
