*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Get Users API
    Create Session
    ...    api
    ...    https://jsonplaceholder.typicode.com

    ${response}=    GET On Session
    ...    api
    ...    url=/users

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    200

    ${json}=    Set Variable
    ...    ${response.json()}

    Log    ${json}

    Should Be Equal
    ...    ${json}[0][name]
    ...    Leanne Graham