*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${BROWSER}       Chrome
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

User is logged into SauceDemo
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button
    Wait Until Element Is Visible    css=.inventory_list    timeout=15s

User adds products to cart
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Click Element   css=.shopping_cart_link
    Wait Until Element Is Visible    css=.title    timeout=15s

User proceeds to checkout
    Wait Until Element Is Visible    id=checkout    timeout=15s
    Click Button    id=checkout
    Wait Until Page Contains Element    id=first-name    timeout=15s
    Scroll Element Into View    id=first-name

User fills in checkout information
    Input Text    id=first-name    John
    Input Text    id=last-name     Doe
    Input Text    id=postal-code   12345
    Click Button  id=continue
    Wait Until Element Is Visible    css=.summary_info    timeout=15s

User successfully completes the purchase
    Click Button    id=finish
    Wait Until Page Contains    Thank you for your order!    timeout=15s
    Capture Page Screenshot

User leaves checkout info empty
    Click Button    id=continue

User should see error message
    Wait Until Page Contains    Error: First Name is required    timeout=15s
