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

