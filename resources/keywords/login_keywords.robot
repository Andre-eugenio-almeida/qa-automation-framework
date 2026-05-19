*** Settings ***
Resource    ../pages/login_page.robot

*** Keywords ***
Login With Valid User
    Open Login Page
    Fill Login    standard_user    secret_sauce
    Click Login
    Validate Login Success

Login With Invalid User
    Open Login Page
    Fill Login    invalid_user    wrong_password
    Click Login
    Validate Login Error

Test Teardown    Close Browser Session