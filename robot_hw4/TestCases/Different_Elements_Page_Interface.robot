*** Settings ***
Resource  ../Pages/BasePage.robot
Resource  ../Pages/DifferentElementsPage.robot
Test Setup  BasePage.Start Browser and Maximize
Test Teardown  BasePage.Close Browser Window

*** Variables ***
${LOGIN} =  epam
${PASSWORD} =  1234
${CheckboxWaterLog} =  Water: condition changed to true
${CheckboxWindLog} =  Wind: condition changed to true
${UncheckboxWaterLog} =  Water: condition changed to false
${UncheckboxWindLog} =  Wind: condition changed to false
${RadioButtonSelenLog} =  metal: value changed to Selen
${Drop-DownYellowLog} =  Colors: value changed to Yellow

*** Test Cases ***
"Different Elements" page should contain "Interface" elements
    [Documentation]  "Interface" elemetns should be displayed
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    When BasePage.Navigate to "Different Elements" Page
    Then DifferentElementsPage.Check "Interface" Elements

"Different Elements" page should contain "Right" bar
    [Documentation]  "Right" Bar should be displayed
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    When BasePage.Navigate to "Different Elements" Page
    Then DifferentElementsPage.Check "Right" Bar

"Different Elements" page should contain "Left" bar
    [Documentation]  "Left" Bar should be displayed
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    When BasePage.Navigate to "Different Elements" Page
    Then DifferentElementsPage.Check "Left" Bar

If user check "Water" checkbox the message should appear
    [Documentation]  If user check "Water" checkbox the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    When DifferentElementsPage.Click "Water" Checkbox
    Then BasePage.Assert "First Row" Log  ${CheckboxWaterLog}

If user check "Wind" checkbox the message should appear
    [Documentation]  If user check "Wind" checkbox the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    When DifferentElementsPage.Click "Wind" Checkbox
    Then BasePage.Assert "First Row" Log  ${CheckboxWindLog}


If user check "Selen" radio button the message should appear
    [Documentation]  If user check "Selen" radio button the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    When DifferentElementsPage.Select "Selen" Radio Button
    Then BasePage.Assert "First Row" Log  ${RadioButtonSelenLog}

If user select "Yellow" drop-down element the message should appear
    [Documentation]  If user "Yellow" drop-down element the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    When DifferentElementsPage.Select "Yellow" Drop-Down Element
    Then BasePage.Assert "First Row" Log  ${Drop-DownYellowLog}

If user uncheck "Water" checkbox the message should appear
    [Documentation]  If user uncheck "Water" checkbox the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    And DifferentElementsPage.Click "Water" Checkbox
    When DifferentElementsPage.Click "Water" Checkbox
    Then BasePage.Assert "First Row" Log  ${UncheckboxWaterLog}

If user uncheck "Wind" checkbox the message should appear
    [Documentation]  If user uncheck "Wind" checkbox the special message should appear
    [Tags]  Smoke
    Given BasePage.Perform Login  ${LOGIN}  ${PASSWORD}
    And BasePage.Navigate to "Different Elements" Page
    And DifferentElementsPage.Click "Wind" Checkbox
    When DifferentElementsPage.Click "Wind" Checkbox
    Then BasePage.Assert "First Row" Log  ${UncheckboxWindLog}
