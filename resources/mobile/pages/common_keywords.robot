# resources/mobile/keywords/common_keywords.robot
*** Settings ***
Documentation    Common keywords that can be used across test suites
Resource         ../config.robot
Resource         ../pages/home_page.robot
Resource         ../pages/login_page.robot
Resource         ../pages/forms_page.robot

*** Variables ***
${DEFAULT_EMAIL}        test@example.com
${DEFAULT_PASSWORD}     Password123

*** Keywords ***
Start Test Session
    Open Test Application
    Verify Home Page Loaded

End Test Session
    Close Application

Navigate To And Verify Login Page
    Navigate To Login Page
    Verify Login Page Loaded

Complete Login Process
    [Arguments]    ${email}=${DEFAULT_EMAIL}    ${password}=${DEFAULT_PASSWORD}
    Navigate To And Verify Login Page
    Login With Credentials    ${email}    ${password}
