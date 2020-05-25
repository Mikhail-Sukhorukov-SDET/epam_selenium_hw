*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/BasePage.robot
Resource  ../Pages/DifferentElementsPage.robot
Test Setup  BasePage.Start Browser and Maximize
Test Teardown  BasePage.Close Browser Window

*** Variables ***
${Timeout}  1
${CheckboxWaterLog}  Water: condition changed to true
${CheckboxWindLog}  Wind: condition changed to true
${UncheckboxWaterLog}  Water: condition changed to false
${UncheckboxWindLog}  Wind: condition changed to false
${RadioButtonSelenLog}  metal: value changed to Selen
${Drop-DownYellowLog}  Colors: value changed to Yellow

*** Test Cases ***
Interface Check
    [Documentation]  The first task
    [Tags]  Smoke
    When BasePage.Perform Login  epam  1234
    Then BasePage.Check "User Name"
    Sleep  ${Timeout}
    Then BasePage.Check "Header Service" Drop-Down List
    Sleep  ${Timeout}
    Then BasePage.Check "Left-Side Service" Drop-Down List
    Sleep  ${Timeout}
    When BasePage.Navigate to "Different Elements" Page
    Sleep  ${Timeout}
    Then DifferentElementsPage.Check "Interface" Elements
    Then DifferentElementsPage.Check "Right" Bar
    Then DifferentElementsPage.Check "Left" Bar
    When DifferentElementsPage.Click "Water" Checkbox
    Then BasePage.Assert "First Row" Log  ${CheckboxWaterLog}
    When DifferentElementsPage.Click "Wind" Checkbox
    Then BasePage.Assert "First Row" Log  ${CheckboxWindLog}
    Sleep  ${Timeout}
    When DifferentElementsPage.Select "Selen" Radio Button
    Then BasePage.Assert "First Row" Log  ${RadioButtonSelenLog}
    Sleep  ${Timeout}
    When DifferentElementsPage.Select "Yellow" Drop-Down Element
    Then BasePage.Assert "First Row" Log  ${Drop-DownYellowLog}
    Sleep  ${Timeout}
    When DifferentElementsPage.Click "Water" Checkbox
    Then BasePage.Assert "First Row" Log  ${UncheckboxWaterLog}
    When DifferentElementsPage.Click "Wind" Checkbox
    Then BasePage.Assert "First Row" Log  ${UncheckboxWindLog}
    Sleep  ${Timeout}






