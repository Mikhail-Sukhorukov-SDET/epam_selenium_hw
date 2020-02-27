# Methods for all pages
*** Settings ***
Library  SeleniumLibrary
Variables  ../Pages/BasePageLocators.py

*** Variables ***
${URL}  https://epam.github.io/JDI/
${Browser}  Chrome
${UserName}  PITER CHAILOVSKII
${HomePageTitle}  Home Page
${DifferentElementsPageTitle}  Different Elements
${DatesPageTitle}  Dates

*** Keywords ***
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${Title}=  Get Title
    should be equal  ${Title}  ${HomePageTitle}

Close Browser Window
    Capture Page Screenshot
    Close Browser

Perform Login
    [Arguments]    ${login}  ${password}
    Click Element  ${USER_ICON_BUTTON}
    Input Text  ${USER_NAME_TEXT_INPUT}  ${login}
    Input Text  ${USER_PASSWORD_TEXT_INPUT}  ${password}
    Click Element  ${SUBMIT_BUTTON}

Check User Name
    Element Text Should Be  ${USER_NAME_TEXT}  ${UserName}

Check Header Service Drop-Down List
    Click Element  ${HEADER_SERVICES_DROP_DOWN_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_SUPPORT_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_DATES_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_COMPLEX_TABLE_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_SIMPLE_TABLE_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_TABLE_WITH_PAGES_BUTTON}
    Page Should Contain Element  ${HEADER_DROP_DOWN_DIFFERENT_ELEMENTS_BUTTON}

Check Left-Side Service Drop-Down List
    Click Element  ${LEFT_SERVICES_DROP_DOWN_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_SUPPORT_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_DATES_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_COMPLEX_TABLE_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_SIMPLE_TABLE_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_TABLE_WITH_PAGES_BUTTON}
    Page Should Contain Element  ${LEFT_DROP_DOWN_DIFFERENT_ELEMENTS_BUTTON}

Navigate to Different Elements Page
    Click Element  ${HEADER_SERVICES_DROP_DOWN_BUTTON}
    Click Element  ${HEADER_DROP_DOWN_DIFFERENT_ELEMENTS_BUTTON}
    ${Title}=  Get Title
    should be equal  ${Title}  ${DifferentElementsPageTitle}

Navigate to Dates Page
    Click Element  ${HEADER_SERVICES_DROP_DOWN_BUTTON}
    Click Element  ${HEADER_DROP_DOWN_DATES_BUTTON}
    ${Title}=  Get Title
    should be equal  ${Title}  ${DatesPageTitle}

# for Dates Page and Different Elements Page
Assert Log First Row
    [Arguments]  ${Content}
    Element Should Contain  ${FIRST_ROW_OF_LOG}  ${Content}

Assert Log Second Row
    [Arguments]  ${Content}
    Element Should Contain  ${SECOND_ROW_OF_LOG}  ${Content}