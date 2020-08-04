*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Suite Setup  Set Selenium Speed  0.3s
Suite Teardown  Close Browser

*** Test Cases ***
Buttons Click Actions
    Go to Homepage
    Maximize Browser Window
    Double Click button
    Right Click button
    Single Click button


*** Keywords ***
Go to Homepage
    Open Browser  ${URL}  ${Browser}
    Page Should contain  Buttons

Double Click button
    Double Click Element  ${DoubleClick}
    Page Should contain  You have done a double click

Right Click button
    Click Element  ${RightClick}  CTRL
    Page Should contain  You have done a right click

Single Click button
    Click Element  ${SingleClick}
    Page Should contain  You have done a dynamic click


*** Variables ***
${Browser}  chrome
${URL}  https://demoqa.com/buttons
${DoubleClick}  id: doubleClickBtn
${RightClick}   id: rightClickBtn
${SingleClick}  xpath: //div[3]//button[1]