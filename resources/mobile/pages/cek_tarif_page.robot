*** Settings ***
Documentation    Check Tariff page object with page elements and actions
#Resource         base_page.robot
Library    AppiumLibrary

*** Variables ***
${CEK_TARIF_TITLE}      xpath=//android.widget.TextView[@text="Cek Tarif untuk Pengirimanmu"]
${ASAL_BUTTON}          xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.lionparcel.services.consumer:id/rvHistoryList"]
${TUJUAN_BUTTON}        xpath=//android.widget.EditText[@resource-id="com.lionparcel.services.consumer:id/edtDestinationAddress"]
${CEK_TARIF_BUTTON}     xpath=//android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/btnCheckTariff"]
${SECTION_WEIGHT}       xpath=//android.widget.LinearLayout[@resource-id="com.lionparcel.services.consumer:id/llWeightSection"]
${BUTTON_PICKUP}        xpath=//android.widget.Button[@resource-id="com.lionparcel.services.consumer:id/buttonPickUp"]
*** Keywords ***
Verify Login Page Loaded
    Wait Until Page Contains Element    ${CEK_TARIF_TITLE}

Click Asal Button
    Click Element   ${ASAL_BUTTON}

Click Tujuan Button
    Click Element    ${TUJUAN_BUTTON}

Click Cek Tarif Button
    Click Element    ${CEK_TARIF_BUTTON}

Verify Section Weight
    Wait Until Page Contains Element    ${SECTION_WEIGHT}

Scroll To Element
    [Arguments]    ${button_pickup}
    FOR    ${i}    IN RANGE    10
        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${BUTTON_PICKUP}
        Return From Keyword If    ${is_visible}
        Scroll Down
    END
    Capture Page Screenshot
    Fail    Element '${button_pickup}' not found after scrolling

