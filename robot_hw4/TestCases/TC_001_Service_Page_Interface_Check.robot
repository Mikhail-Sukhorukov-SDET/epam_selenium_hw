*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/BasePage.robot
Resource  ../Pages/DifferentElementsPage.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window

*** Variables ***
${Timeout}  1
${CheckboxWaterLog}  Water: condition changed to true
${CheckboxWindLog}  Wind: condition changed to true
${UncheckboxWaterLog}  Water: condition changed to false
${UncheckboxWindLog}  Wind: condition changed to false
${RadioButtonSelenLog}  metal: value changed to Selen
${Drop-DownYellowLog}  Colors: value changed to Yellow

*** Test Cases ***
TC_001 Service Page Interface Check
    [Documentation]  The first task
    [Tags]  Smoke
    Perform Login  epam  1234
    Check User Name
    Sleep  ${Timeout}
    Check Header Service Drop-Down List
    Sleep  ${Timeout}
    Check Left-Side Service Drop-Down List
    Sleep  ${Timeout}
    Navigate to Different Elements Page
    Sleep  ${Timeout}
    Check Interface On Different Elements Page
    Check Right Section On Different Elements Page
    Check Left Section On Different Elements Page
    Click Water Checkbox
    Assert Log First Row  ${CheckboxWaterLog}
    Click Wind Checkbox
    Assert Log First Row  ${CheckboxWindLog}
    Sleep  ${Timeout}
    Select Selen Radio Button
    Assert Log First Row  ${RadioButtonSelenLog}
    Sleep  ${Timeout}
    Select Yellow Drop-Down Element
    Assert Log First Row  ${Drop-DownYellowLog}
    Sleep  ${Timeout}
    Click Water Checkbox
    Assert Log First Row  ${UncheckboxWaterLog}
    Click Wind Checkbox
    Assert Log First Row  ${UncheckboxWindLog}
    Sleep  ${Timeout}






