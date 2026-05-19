*** Settings ***
Resource    ../resources/keywords/login_keywords.robot

*** Test Cases ***
Valid Login
    Login With Valid User

Invalid Login
    Login With Invalid User