*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  Keywords.robot

Suite Setup  Set Selenium Speed  0.3s
Suite Teardown  Close Browser

*** Test Cases ***
DragAndDrop
    Open Droppable page
    Maximize Browser Window
    DragElement

