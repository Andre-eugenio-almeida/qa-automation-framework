*** Settings ***
Library    Browser

*** Keywords ***
Add Product To Cart
    Click    id=add-to-cart-sauce-labs-backpack

Open Cart
    Click    .shopping_cart_link

Go To Checkout
    Click    id=checkout

Fill Checkout Information
    Fill Text    id=first-name    Andre
    Fill Text    id=last-name     QA
    Fill Text    id=postal-code   12345

Continue Checkout
    Click    id=continue

Finish Checkout
    Click    id=finish

Validate Checkout Success
    Wait For Elements State
    ...    text=Thank you for your order!
    ...    visible

Take Screenshot


*** Settings ***
Resource    ../pages/login_page.robot
Resource    ../pages/checkout_page.robot

*** Keywords ***
Complete Checkout Flow
    Open Login Page

    Fill Login
    ...    standard_user
    ...    secret_sauce

    Click Login

    Add Product To Cart
    Open Cart
    Go To Checkout

    Fill Checkout Information

    Continue Checkout
    Finish Checkout

    Validate Checkout Success