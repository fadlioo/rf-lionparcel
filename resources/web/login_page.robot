*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME_ELEMENT}    id=user-name
${PASSWORD_ELEMENT}    id=password
${LOGIN_BUTTON}        id=login-button

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Capture Page Screenshot   login_page.png

Input Username
    [Arguments]    ${username}
    Input Text     ${USERNAME_ELEMENT}  ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_ELEMENT}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Login
    [Arguments]    ${username}    ${password}
    Open Login Page
    Input Username    ${username}
    Input Password    ${password}
    capture page screenshot   filledPage.png
    Click Login Button
    Wait Until Page Contains Element    id=react-burger-menu-btn
