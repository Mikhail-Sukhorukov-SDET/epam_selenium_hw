*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Helper.robot

*** Variables ***
${Timeout}  1
${TheFirstRow}  1
${TheSecondRow}  2
${Range2From0Log}  Range 2(From):0 link clicked
${Range2To0Log}  Range 2(To):0 link clicked
${Range2From100Log}  Range 2(From):100 link clicked
${Range2To100Log}  Range 2(To):100 link clicked
${Range2From30Log}  Range 2(From):30 link clicked
${Range2To70Log}  Range 2(To):70 link clicked


*** Test Cases ***
TC_002 Dates Page Sliders Check
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    Perform Login  epam  1234
    Check User Name
    Navigate to Dates Page
    Drag And Drop From 20 To 0
    Assert Log  ${TheFirstRow}  ${Range2From0Log}
    Sleep  ${Timeout}
    Drag And Drop From 100 To 0
    Assert Log  ${TheFirstRow}  ${Range2To0Log}
    Sleep  ${Timeout}
    Drag And Drop From 0 To 100
    Assert Log  ${TheFirstRow}  ${Range2From100Log}
    Assert Log  ${TheSecondRow}  ${Range2To100Log}
    Sleep  ${Timeout}
    Drag And Drop From 100 To 30
    Assert Log  ${TheFirstRow}  ${Range2From30Log}  # bag!!!
    Sleep  ${Timeout}
    Drag And Drop From 100 To 70
    Assert Log  ${TheFirstRow}  ${Range2To70Log}
    Sleep  ${Timeout}