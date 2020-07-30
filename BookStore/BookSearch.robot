*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Suite Setup  Set Selenium Speed  0.2s
Suite Teardown  Close Browser

*** Test Cases ***
Look for JSBook
    Open Books Page
    SearchBook

*** Keywords ***
Open Books Page
    Open Browser  ${URL}  firefox

SearchBook
    Input text  ${Search}  You Don't Know JS
    Wait Until Page Contains Element  ${JSBook}

*** Variables ***

${URL}  https://demoqa.com/books
${Search}  id: searchBox
${JSBook}  id: see-book-You Don't Know JS