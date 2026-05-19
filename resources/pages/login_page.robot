*** Settings ***
Library    Browser

*** Keywords ***
Open Login Page
    New Browser    chromium    headless=False
    New Page    https://www.saucedemo.com

Fill Login
    [Arguments]    ${user}    ${password}

    Fill Text    id=user-name    ${user}
    Fill Text    id=password     ${password}

Click Login
    Click    id=login-button
    Take Screenshot     fullPage=True

Validate Login Success
    Wait For Elements State
    ...    text=Products
    ...    visible

Validate Login Error
    Wait For Elements State
    ...    data-test=error
    ...    visible


Close Browser Session
    Close Browser