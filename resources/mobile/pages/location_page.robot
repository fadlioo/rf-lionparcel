 resources/mobile/pages/login_page.robot
*** Settings ***
Documentation    Login page object with page elements and actions
Resource    base_page.robot

*** Variables ***
${LOCATION_FILTER}          xpath=//android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtRouteSearch"]
${LOCATION_HISTORY}     xpath=//android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llDestinationRoute"]

*** Keywords ***
Verify Login Page Loaded
    Wait For Element    ${LOCATION_FILTER}

Click Login Button
    Click On Element    ${LOCATION_FILTER}

Input Text In Input Field
    [Arguments]    ${text}
    Input Text On Element  ${LOCATION_FILTER}    ${text}
    Take Screenshot With Name    text_entered
