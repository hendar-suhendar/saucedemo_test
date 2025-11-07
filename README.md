# SauceDemo Checkout Automation Test

This project automates the checkout journey on **SauceDemo.com** using **Robot Framework**, **Python**, and **Gherkin-style syntax**.

## Overview

This automation focuses on a full user journey:

* **Login** with standard user credentials
* **Add products** to the shopping cart
* **Proceed to checkout** and fill in information
* **Complete the purchase**
* Browser remains open after test for verification

## Technology Stack

| Component            | Description                                     |
| -------------------- | ----------------------------------------------- |
| Robot Framework      | Main automation framework                       |
| Python 3.x           | Programming language to execute Robot Framework |
| SeleniumLibrary      | For web automation                              |
| Gherkin-style syntax | For writing clear and readable test cases       |

## Project Structure

```
saucedemo-robot-test/
├── saucedemo_checkout.robot     # Gherkin-style test scenarios
├── resources/
│   └── keywords.robot           # Reusable keywords
├── output/                      # Test logs, screenshots, and reports
├── .gitignore
└── README.md
```

## Notes

* Uses a separate Chrome profile (`C:/Temp/ChromeAutomationProfile`) to prevent password manager popups.
* Timeout of 15 seconds is set for page elements for stability.
* Adjust ChromeDriver path or version if needed to match your Chrome installation.
