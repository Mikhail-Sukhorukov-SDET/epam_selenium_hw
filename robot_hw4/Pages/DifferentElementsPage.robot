# Methods for Different Elements Page
*** Settings ***
Library  SeleniumLibrary
Variables  ../Pages/DifferentElementsPageLocators.py

*** Keywords ***
Check "Interface" Elements
    # checkboxes
    Page Should Contain Element  ${WATER_CHECKBOX}
    Page Should Contain Element  ${EARTH_CHECKBOX}
    Page Should Contain Element  ${WIND_CHECKBOX}
    Page Should Contain Element  ${FIRE_CHECKBOX}
    # radio buttons
    Page Should Contain Element  ${GOLD_RADIO_BUTTON}
    Page Should Contain Element  ${SILVER_RADIO_BUTTON}
    Page Should Contain Element  ${BRONZE_RADIO_BUTTON}
    Page Should Contain Element  ${SELEN_RADIO_BUTTON}
    # dropdown
    Page Should Contain Element  ${DROP_DOWN_BUTTON}
    #buttons
    Page Should Contain Element  ${DEFAULT_BUTTON}
    Page Should Contain Element  ${BUTTON}

Check "Right" Bar
    Page Should Contain Element  ${RIGHT_SIDE_BAR}

Check "Left" Bar
    Page Should Contain Element  ${LEFT_SIDE_BAR}

Click "Water" Checkbox
    Click Element  ${WATER_CHECKBOX}

Click "Wind" Checkbox
    Click Element  ${WIND_CHECKBOX}

Select "Selen" Radio Button
    Click Element  ${SELEN_RADIO_BUTTON}

Select "Yellow" Drop-Down Element
    Click Element  ${DROP_DOWN_BUTTON}
    Click Element  ${YELLOW_DROP_DOWN}

