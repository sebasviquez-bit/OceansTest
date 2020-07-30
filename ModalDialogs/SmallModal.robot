*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  Keywords.robot

Suite Setup  Set Selenium Speed  0.2s
Suite Teardown  Close Browser

*** Test Cases ***
SmallModal Test
    Open SmallModal page
    Maximize Browser Window
    Click SmallModal Button
    Close SmallModal popUp



