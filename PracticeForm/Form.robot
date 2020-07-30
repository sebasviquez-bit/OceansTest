*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  Keywords.robot

Suite Setup  Set Selenium Speed  0.2s
Suite Teardown  Close Browser

*** Test Cases ***
PracticeForm
    OpenHomepage
    Maximize Browser Window
    Enter FirstName
    Enter LastName
    Enter Email
    Select Gender
    Enter Mobile
    Enter DateOfBirth
    #Enter Subject  #There is an issue with this field, for some reason is not taking any inputs. FYI
    Select Hobbies
    Upload Picture
    Enter Address
    Select State
    Select City
    Click Submit




