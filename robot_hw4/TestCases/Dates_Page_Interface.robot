*** Settings ***
Resource  ../Pages/BasePage.robot
Resource  ../Pages/DatesPage.robot
Test Setup  BasePage.Start Browser and Maximize
Test Teardown  BasePage.Close Browser Window

*** Variables ***
${LOGIN} =  epam
${PASSWORD} =  1234
${Range2From0Log} =  Range 2(From):0 link clicked
${Range2To0Log} =  Range 2(To):0 link clicked
${Range2From100Log} =  Range 2(From):100 link clicked
${Range2To100Log} =  Range 2(To):100 link clicked
${Range2From30Log} =  Range 2(From):30 link clicked
${Range2To70Log} =  Range 2(To):70 link clicked


*** Test Cases ***
If user drag and drop the "From" slider from 20 to 0 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    When DatesPage.Drag And Drop From 20 To 0
    Then BasePage.Assert "First Row" Log  ${Range2From0Log}

If user drag and drop the "To" slider from 100 to 0 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    And DatesPage.Drag And Drop From 20 To 0
    When DatesPage.Drag And Drop From 100 To 0
    Then BasePage.Assert "First Row" Log  ${Range2To0Log}


If user drag and drop the "To" slider from 0 to 100 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    And DatesPage.Drag And Drop From 20 To 0
    And DatesPage.Drag And Drop From 100 To 0
    When DatesPage.Drag And Drop From 0 To 100
    Then BasePage.Assert "First Row" Log  ${Range2To100Log}

If user drag and drop the "From" slider from 0 to 100 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    And DatesPage.Drag And Drop From 20 To 0
    And DatesPage.Drag And Drop From 100 To 0
    And DatesPage.Drag And Drop From 0 To 100
    When DatesPage.Drag And Drop From 0 To 100
    Then BasePage.Assert "First Row" Log  ${Range2From100Log}

If user drag and drop the "From" slider from 100 to 30 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    And DatesPage.Drag And Drop From 20 To 0
    And DatesPage.Drag And Drop From 100 To 0
    And DatesPage.Drag And Drop From 0 To 100
    And DatesPage.Drag And Drop From 0 To 100
    When DatesPage.Drag And Drop From 100 To 30
    Then BasePage.Assert "First Row" Log  ${Range2From30Log}

If user drag and drop the "To" slider from 100 to 70 should appear the special message
    [Documentation]  If user drug and drop the slider the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Dates" Page
    And DatesPage.Drag And Drop From 20 To 0
    And DatesPage.Drag And Drop From 100 To 0
    And DatesPage.Drag And Drop From 0 To 100
    And DatesPage.Drag And Drop From 0 To 100
    And DatesPage.Drag And Drop From 100 To 30
    When DatesPage.Drag And Drop From 100 To 70
    Then BasePage.Assert "First Row" Log  ${Range2To70Log}