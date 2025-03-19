# resources/mobile/pages/home_page.robot
*** Settings ***
Documentation    Home page object with page elements and actions
Resource         base_page.robot

*** Variables ***
${BERANDA_TITLE}          xpath=//android.widget.TextView[@resource-id="com.lionparcel.services.consumer:id/navigation_bar_item_large_label_view"]
${AKUN_BUTTON}            xpath=//android.widget.ImageView[@resource-id="com.lionparcel.services.consumer:id/navigation_bar_item_icon_view"][4]
${CEK_TARIF_MENU}       xpath=//android.widget.FrameLayout[@resource-id="com.lionparcel.services.consumer:id/hmtMenu"][3]

*** Keywords ***
Verify Home Page Loaded
    Wait For Element    ${BERANDA_TITLE}
    Take Screenshot With Name    home_page

 Click Masuk Button
    Click On Element    ${AKUN_BUTTON}

 Click Cek Tarif Menu
    Click Element   ${CEK_TARIF_MENU}
