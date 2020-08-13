*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary

*** Variables ***
${Base_Url}  http://thetestingworldapi.com/

*** Test Cases ***
Get Students Details
    Create Session  StudentsDetails  ${Base_Url}
    ${response}=  Get request  StudentsDetails  api/studentsDetails
    Log to console  ${response}
    Log to console  ${response.content}



