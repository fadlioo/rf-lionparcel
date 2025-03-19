# resources/mobile/pages/base_page.robot
*** Settings ***
Documentation    Base page object with common methods
Library          AppiumLibrary
Resource         ../config.robot

*** Keywords ***
Wait For Element
    [Arguments]    ${locator}    ${timeout}=${WAIT_TIME_OUT}
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}

Click On Element
    [Arguments]    ${locator}
    Wait For Element    ${locator}
    Click Element    ${locator}

Input Text On Element
    [Arguments]    ${locator}    ${text}
    Wait For Element    ${locator}
    Input Text    ${locator}    ${text}

Verify Element Contains Text
    [Arguments]    ${locator}    ${expected_text}
    Wait For Element    ${locator}
    Element Should Contain Text    ${locator}    ${expected_text}

Take Screenshot With Name
    [Arguments]    ${name}
    Capture Page Screenshot    ${name}.png
