*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://reqres.in/api

*** Keywords ***
Create User
    [Arguments]    ${name}    ${job}
    Create Session    reqres    ${BASE_URL}    verify=True
    &{data}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    POST On Session    reqres    /users    json=${data}
    RETURN    ${response}

Response Status Should Be
    [Arguments]    ${response}    ${expected_status}
    Status Should Be    ${expected_status}    ${response}

Response Should Contain
    [Arguments]    ${response}    ${field}    ${expected_value}
    ${json}=    Set Variable    ${response.json()}
    Should Be Equal    ${json}[${field}]    ${expected_value}

POST API Endpoint is available
    No Operation

I create a user with name and job
    [Arguments]    ${name}    ${job}
    ${response}=    Create User    ${name}    ${job}
    Response Status Should Be    ${response}    201
    Set Test Variable    ${response}

response should confirm user creation
    [Arguments]    ${name}    ${job}
    ${json}=    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${json}    id
    Dictionary Should Contain Key    ${json}    createdAt
    Response Should Contain    ${response}    name    ${name}
    Response Should Contain    ${response}    job    ${job}
