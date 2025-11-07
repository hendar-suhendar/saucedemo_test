*** Settings ***
Documentation     Automated checkout journey test on saucedemo.com
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Test Setup        Open Browser To Login Page
Test Teardown     Close Browser

*** Test Cases ***
User Journey - Successful Checkout
    [Tags]    Checkout    Regression
    Given User is logged into SauceDemo
#   When User adds products to cart
#   And User proceeds to checkout
#   And User fills in checkout information
#   Then User successfully completes the purchase
 