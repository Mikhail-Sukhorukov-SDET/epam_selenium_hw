*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://epam.github.io/JDI/
${Browser}  Chrome
${UserName}  PITER CHAILOVSKII
${DifferentElementsPageTitle}  Different Elements
${HomePageTitle}  Home Page
${CheckboxWaterLog}  Water: condition changed to true
${CheckboxWindLog}  Wind: condition changed to true
${UncheckboxWaterLog}  Water: condition changed to false
${UncheckboxWindLog}  Wind: condition changed to false
${RadioButtonSelenLog}  metal: value changed to Selen
${Drop-DownYellowLog}  Colors: value changed to Yellow

*** Keywords ***
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${Title}=  Get Title
    should be equal  ${Title}  ${HomePageTitle}

Close Browser Window
    Close Browser

Perform Login
    [Arguments]    ${login}  ${password}
    Click Element  id:user-icon
    Input Text  id:name  ${login}
    Input Text  id:password  ${password}
    Click Element  id:login-button

Check User Name
    Element Text Should Be  id:user-name  ${UserName}

Check Header Service Drop-Down List
    Click Element  css:ul.nav > li.dropdown > a
    Page Should Contain Element  //a[contains(text(),'Support')]
    Page Should Contain Element  //a[contains(text(),'Dates')]
    Page Should Contain Element  //a[contains(text(),'Complex Table')]
    Page Should Contain Element  //a[contains(text(),'Simple Table')]
    Page Should Contain Element  //a[contains(text(),'Table with pages')]
    Page Should Contain Element  //a[contains(text(),'Different elements')]

Check Left-Side Service Drop-Down List
    Click Element  css:ul.sidebar-menu > li:nth-child(3) > a
    Page Should Contain Element  //span[text()='Support']
    Page Should Contain Element  //span[text()='Dates']
    Page Should Contain Element  //span[text()='Complex Table ']
    Page Should Contain Element  //span[text()='Simple Table']
    Page Should Contain Element  //span[text()='Table with pages']
    Page Should Contain Element  //span[text()='Different elements']

Navigate to Different Elements Page
    Click Element  css:ul.nav > li.dropdown > a
    Click Element  //a[contains(text(),'Different elements')]
    ${Title}=  Get Title
    should be equal  ${Title}  ${DifferentElementsPageTitle}

Check Interface On Different Elements Page
    # checkboxes
    Page Should Contain Element  css:div.checkbox-row label.label-checkbox:nth-child(1) input
    Page Should Contain Element  css:div.checkbox-row label.label-checkbox:nth-child(2) input
    Page Should Contain Element  css:div.checkbox-row label.label-checkbox:nth-child(3) input
    Page Should Contain Element  css:div.checkbox-row label.label-checkbox:nth-child(4) input
    # radio buttons
    Page Should Contain Element  css:div.checkbox-row label.label-radio:nth-child(1) input
    Page Should Contain Element  css:div.checkbox-row label.label-radio:nth-child(2) input
    Page Should Contain Element  css:div.checkbox-row label.label-radio:nth-child(3) input
    Page Should Contain Element  css:div.checkbox-row label.label-radio:nth-child(4) input
    # dropdown
    Page Should Contain Element  css:div.colors
    #buttons
    Page Should Contain Element  name:Default Button
    Page Should Contain Element  css:input[value="Button"]

Check Right Section On Different Elements Page
    Page Should Contain Element  name:log-sidebar

Check Left Section On Different Elements Page
    Page Should Contain Element  id:mCSB_1_container

Select Checkboxes And Assert Following Log
    Select Checkbox  css:div.checkbox-row label.label-checkbox:nth-child(1) input
    Select Checkbox  css:div.checkbox-row label.label-checkbox:nth-child(3) input
    Element Should Contain  css:ul.panel-body-list li:nth-child(2)  ${CheckboxWaterLog}
    Element Should Contain  css:ul.panel-body-list li:nth-child(1)  ${CheckboxWindLog}

Select Radio Buttons And Assert Following Log
    Click Element  css:div.checkbox-row label.label-radio:nth-child(4) input
    Element Should Contain  css:ul.panel-body-list li:nth-child(1)  ${RadioButtonSelenLog}

Select Drop-Down Element And Assert Following Log
    Click Element  css:div.colors
    Click Element  xpath://option[text()="Yellow"]
    Element Should Contain  css:ul.panel-body-list li:nth-child(1)  ${Drop-DownYellowLog}

Unselect Checkboxes And Assert Following Log
    Click Element  css:div.checkbox-row label.label-checkbox:nth-child(1) input
    Click Element  css:div.checkbox-row label.label-checkbox:nth-child(3) input
    Element Should Contain  css:ul.panel-body-list li:nth-child(2)  ${UncheckboxWaterLog}
    Element Should Contain  css:ul.panel-body-list li:nth-child(1)  ${UncheckboxWindLog}


