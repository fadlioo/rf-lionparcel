# tests/assignment_4.robot
*** Settings ***
Documentation    Test suite for Lion Parcel functionality
Library  AppiumLibrary
Resource         ../resources/mobile/config.robot
Resource         ../resources/mobile/pages/home_page.robot
Resource         ../resources/mobile/pages/login_page.robot
Resource         ../resources/mobile/pages/common_keywords.robot
Resource         ../resources/mobile/pages/forms_page.robot
Resource         ../resources/mobile/pages/cek_tarif_page.robot
Resource         ../resources/mobile/pages/location_page.robot
Suite Setup      Start Test Session
Suite Teardown   End Test Session
Test Tags        lionparcel

*** Variables ***
${VALID_EMAIL}       test@example.com
${VALID_PASSWORD}    Password123
${INVALID_EMAIL}     invalid@email.com
${INVALID_PASSWORD}  wrong_password
${VALID_PHONE}       089636853150
${VALID_PASS}        RahasiaDeh123!
${ORIGIN}            Pasar Minggu
${DESTINATION}       Denpasar Barat

*** Test Cases ***
User Should Be Able To Navigate To Login Page
    Navigate To Login Page
    Verify Login Page Loaded

User Should Be Able To Enter Login Credentials
    Navigate To Login Page
    Verify Login Page Loaded
    Enter Email    ${VALID_EMAIL}
    Enter Password    ${VALID_PASSWORD}
    Take Screenshot With Name    credentials_entered

User Should Be Able To Switch Between Login And Signup Tabs
    Navigate To Login Page
    Verify Login Page Loaded
    Switch To Signup Tab
    Take Screenshot With Name    signup_tab
    Switch To Login Tab
    Take Screenshot With Name    login_tab

User Should Be Able To Check Tariff Successfully
    # Navigate to account section
    Click Masuk Button

    # Login process
    Verify Forms Page Loaded
    Enter Text In Input Field    ${VALID_PHONE}
    Input Text On Element    ${PASSWORD_FIELD}    ${VALID_PASS}
    Click On Element    ${LOGIN_BUTTON}

    # Wait for home page after login
    Verify Home Page Loaded

    # Navigate to check tariff menu
    Click Cek Tarif Menu
    Wait For Element    ${CEK_TARIF_TITLE}

    # Set origin location
    Click Asal Button
    Wait For Element    ${LOCATION_FILTER}
    Input Text In Input Field    ${ORIGIN}
    Click On Element    ${LOCATION_HISTORY}

    # Set destination
    Click Tujuan Button
    Wait For Element    ${LOCATION_FILTER}
    Input Text In Input Field    ${DESTINATION}
    Click On Element    ${LOCATION_HISTORY}

    # Check tariff
    Click Cek Tarif Button
    Verify Section Weight

    # Scroll down and take screenshot
    Scroll To Element    ${BUTTON_PICKUP}
    Take Screenshot With Name    check_tariff_results

    # Request pickup
    Click On Element    ${BUTTON_PICKUP}

    # Close application is handled by Suite Teardown
