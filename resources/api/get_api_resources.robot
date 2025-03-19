*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://reqres.in/api

*** Keywords ***
Get Single User
    [Arguments]    ${user_id}
    Create Session    reqres    ${BASE_URL}    verify=True
    ${response}=    GET On Session    reqres    /users/${user_id}
    RETURN    ${response}

Response Status Should Be
    [Arguments]    ${response}    ${expected_status}
    Status Should Be    ${expected_status}    ${response}

Response Should Contain
    [Arguments]    ${response}    ${field}    ${expected_value}
    ${json}=    Set Variable    ${response.json()}
    Should Be Equal    ${json}[${field}]    ${expected_value}

GET API Endpoint is available
    No Operation

I request user with ID
    [Arguments]    ${user_id}
    ${response}=    Get Single User    ${user_id}
    Response Status Should Be    ${response}    200
    Set Test Variable      ${RESPONSE}  ${response}

response should contain user data
    ${json}=    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${json}    data
    Dictionary Should Contain Key    ${json}[data]    id
    Dictionary Should Contain Key    ${json}[data]    email
    Dictionary Should Contain Key    ${json}[data]    first_name
    Dictionary Should Contain Key    ${json}[data]    last_name
