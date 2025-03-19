# resources/mobile/pages/login_page.robot
*** Settings ***
Documentation    Login page object with page elements and actions
Resource         base_page.robot

*** Variables ***
${LOGIN_TITLE}          xpath=//android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/tvLoginTitle"]
${MASUK_BUTTON}         xpath=//android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnLogin"]

*** Keywords ***
Verify Login Page Loaded
    Wait For Element    ${LOGIN_TITLE}

Click Login Button
    Click On Element    ${MASUK_BUTTON}
