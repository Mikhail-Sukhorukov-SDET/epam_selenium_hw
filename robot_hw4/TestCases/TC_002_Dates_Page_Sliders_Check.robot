*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Helper.robot

*** Variables ***
${Timeout}  0


*** Test Cases ***
TC_002 Dates Page Sliders Check
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    Perform Login  epam  1234
    Check User Name
    Navigate to Dates Page
    Drag And Drop From 20 To 0
    Sleep  ${Timeout}
    Drag And Drop From 100 To 0
    Sleep  ${Timeout}
    Drag And Drop From 0 To 100
    Sleep  ${Timeout}
    Drag And Drop From 100 To 30
    Sleep  ${Timeout}
    Drag And Drop From 100 To 70
    Sleep  ${Timeout}