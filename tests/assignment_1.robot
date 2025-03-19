*** Settings ***
Documentation     API Tests with BDD style
Resource          ../resources/api/get_api_resources.robot
Resource          ../resources/api/post_api_resources.robot

*** Test Cases ***
Scenario: Get Single User API Test
    Given GET API Endpoint is available
        When I request user with ID    2
        Log    ${RESPONSE.status_code}
        Then Response Status Should Be    ${RESPONSE}    200
        And response should contain user data

Scenario: Create New User API Test
    Given POST API Endpoint is available
        When I create a user with name and job    padli ganteng    automation engineer
        Log    ${response.status_code}
        Then Response Status Should Be    ${response}    201
        And response should confirm user creation    padli ganteng    automation engineer

*** Keywords ***
 Response Status Should Be
    [Arguments]    ${response}    ${expected_status}
    Status Should Be    ${expected_status}    ${response}
