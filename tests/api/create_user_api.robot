*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Create User API
    Create Session
    ...    api
    ...    https://jsonplaceholder.typicode.com

    ${body}=    Create Dictionary
    ...    name=Andre
    ...    username=qaautomation

    ${response}=    POST On Session
    ...    api
    ...    url=/users
    ...    json=${body}

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    201

    ${json}=    Set Variable
    ...    ${response.json()}

    Log    ${json}

    Should Be Equal
    ...    ${json}[name]
    ...    Andre