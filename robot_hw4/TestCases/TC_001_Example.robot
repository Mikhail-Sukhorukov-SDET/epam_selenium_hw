*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Helper.robot

*** Test Cases ***
TC_001 Browser Start and Close
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    Perform Login  epam  1234
    Check User Name
    Check Header Service Drop-Down List
    Check Left-Side Service Drop-Down List
    Navigate to Different Elements Page
    Check Interface On Different Elements Page
    Check Right Section On Different Elements Page
    Check Left Section On Different Elements Page
    Select Checkboxes And Assert Following Log
    Select Radio Buttons And Assert Following Log
    Select Drop-Down Element And Assert Following Log
    Unselect Checkboxes And Assert Following Log





