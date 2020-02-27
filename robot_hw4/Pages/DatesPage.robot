# Methods for Dates Page
*** Settings ***
Library  SeleniumLibrary
Variables  ../Pages/DatesPageLocators.py

*** Variables ***
${from_20_to_0}  -80
${from_0_to_100}  400
${from_100_to_30}  -265
${from_100_to_70}  -115
${Y_coordinates}  0


*** Keywords ***
Drag And Drop From 20 To 0
    Drag And Drop By Offset  ${COORDINATES_20}  ${from_20_to_0}  ${Y_coordinates}

Drag And Drop From 100 To 0
    Drag And Drop  ${COORDINATES_100}  ${COORDINATES_0}

Drag And Drop From 0 To 100
    Drag And Drop By Offset  ${COORDINATES_0}  ${from_0_to_100}  ${Y_coordinates}

Drag And Drop From 100 To 30
    Drag And Drop By Offset  ${COORDINATES_100}  ${from_100_to_30}  ${Y_coordinates}

Drag And Drop From 100 To 70
    Drag And Drop By Offset  ${COORDINATES_100}  ${from_100_to_70}  ${Y_coordinates}