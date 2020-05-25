*** Settings ***
Resource  ../Pages/BasePage.robot
Test Teardown  BasePage.Close Browser Window

*** Variables ***
${LOGIN} =  epam
${PASSWORD} =  1234
${Username} =  PITER CHAILOVSKII

*** Test Cases ***
User should be able to login with valid credentials
    [Documentation]  Login with valid credentials and check "username" onto the "Home" Page
    [Tags]  Smoke
    Given BasePage.Start Browser and Maximize
    When BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    Then BasePage.Check "Username"  ${Username}

User should be able to watch "Service" drop-down list onto the Header
    [Documentation]  "Service" drop-down list onto the Header should be onto the "Home" Page
    [Tags]  Smoke
    Given BasePage.Start Browser and Maximize
    Then BasePage.Check "Header Service" Drop-Down List

User should be able to watch "Service" drop-down list onto the Left-Side
    [Documentation]  "Service" drop-down list onto the Left Side should be onto the "Home" Page
    [Tags]  Smoke
    Given BasePage.Start Browser and Maximize
    Then BasePage.Check "Left-Side Service" Drop-Down List
