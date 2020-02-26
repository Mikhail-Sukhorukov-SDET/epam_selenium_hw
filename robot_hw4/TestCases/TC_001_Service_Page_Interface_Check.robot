*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Helper.robot

*** Variables ***
${Timeout}  1
${TheFirstRow}  1
${TheSecondRow}  2
${CheckboxWaterLog}  Water: condition changed to true
${CheckboxWindLog}  Wind: condition changed to true
${UncheckboxWaterLog}  Water: condition changed to false
${UncheckboxWindLog}  Wind: condition changed to false
${RadioButtonSelenLog}  metal: value changed to Selen
${Drop-DownYellowLog}  Colors: value changed to Yellow

*** Test Cases ***
TC_001 Service Page Interface Check
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
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
    Select Checkboxes And Assert Following Log
    Assert Log  ${TheSecondRow}  ${CheckboxWaterLog}
    Assert Log  ${TheFirstRow}  ${CheckboxWindLog}
    Sleep  ${Timeout}
    Select Radio Buttons And Assert Following Log
    Assert Log  ${TheFirstRow}  ${RadioButtonSelenLog}
    Sleep  ${Timeout}
    Select Drop-Down Element And Assert Following Log
    Assert Log  ${TheFirstRow}  ${Drop-DownYellowLog}
    Sleep  ${Timeout}
    Unselect Checkboxes And Assert Following Log
    Assert Log  ${TheSecondRow}  ${UncheckboxWaterLog}
    Assert Log  ${TheFirstRow}  ${UncheckboxWindLog}
    Sleep  ${Timeout}






