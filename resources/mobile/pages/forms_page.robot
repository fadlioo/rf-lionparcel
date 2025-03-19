# resources/mobile/pages/forms_page.robot
*** Settings ***
Documentation    Forms page object with page elements and actions
Resource         base_page.robot
Library    Screenshot

*** Variables ***
${FORMS_TITLE}          xpath=//android.widget.TextView[@text="Masuk"]
${NOMOR_FIELD}          xpath=//android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtPhoneNumber"]
${PASSWORD_FIELD}       xpath=//android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtPassword"]
${LOGIN_BUTTON}         xpath=//android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnNext"]

*** Keywords ***
Verify Forms Page Loaded
    Wait For Element    ${FORMS_TITLE}
    Take Screenshot With Name    forms_page

Enter Text In Input Field
    [Arguments]    ${text}
    Input Text On Element  ${NOMOR_FIELD}    ${text}
    Input Password    ${PASSWORD_FIELD}     ${text}
    Take Screenshot With Name    text_entered
