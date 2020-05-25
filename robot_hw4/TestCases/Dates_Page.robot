*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/BasePage.robot
Resource  ../Pages/DatesPage.robot
Test Setup  BasePage.Start Browser and Maximize
Test Teardown  BasePage.Close Browser Window

*** Variables ***
${Timeout}  1
${Range2From0Log}  Range 2(From):0 link clicked
${Range2To0Log}  Range 2(To):0 link clicked
${Range2From100Log}  Range 2(From):100 link clicked
${Range2To100Log}  Range 2(To):100 link clicked
${Range2From30Log}  Range 2(From):30 link clicked
${Range2To70Log}  Range 2(To):70 link clicked


*** Test Cases ***
Sliders Check
    [Documentation]  The second task
    [Tags]  Smok
    Given BasePage.Perform Login  epam  1234
    And BasePage.Check "User Name"
    And BasePage.Navigate to "Dates" Page
    When DatesPage.Drag And Drop From 20 To 0
    Then BasePage.Assert "First Row" Log  ${Range2From0Log}
    Sleep  ${Timeout}
    When DatesPage.Drag And Drop From 100 To 0
    Then BasePage.Assert "First Row" Log  ${Range2To0Log}
    Sleep  ${Timeout}
    When DatesPage.Drag And Drop From 0 To 100
    Then BasePage.Assert "First Row" Log  ${Range2To100Log}
    Sleep  ${Timeout}
    When DatesPage.Drag And Drop From 0 To 100
    Then BasePage.Assert "First Row" Log  ${Range2From100Log}
    Sleep  ${Timeout}
    When DatesPage.Drag And Drop From 100 To 30
    Then BasePage.Assert "First Row" Log  ${Range2From30Log}  # bag!!!
    Sleep  ${Timeout}
    When DatesPage.Drag And Drop From 100 To 70
    Then BasePage.Assert "First Row" Log  ${Range2To70Log}
    Sleep  ${Timeout}