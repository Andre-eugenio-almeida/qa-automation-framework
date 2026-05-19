*** Settings ***
Resource    ../pages/login_page.robot
Resource    ../pages/checkout_page.robot

*** Keywords ***
Complete Checkout Flow
    Open Login Page

    Fill Login    standard_user    secret_sauce

    Click Login

    Add Product To Cart
    Open Cart
    Go To Checkout

    Fill Checkout Information

    Continue Checkout
    Finish Checkout

    Validate Checkout Success

    Close Browser