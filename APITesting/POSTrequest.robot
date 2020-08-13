*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${Base_Url}=  http://thetestingworldapi.com/

*** Test Cases ***
Send_CustomerInfo
    create session  AddData  ${Base_Url}
    ${body}=  create dictionary  first_name=Sebas  middle_name=Alfredo  last_name=Lopez  date_of_birth=10/20/87
    ${header}=  create dictionary  Content-Type=application/json
    ${response}=  post request  AddData  api/studentsDetails  data=${body}  headers=${header}

    log to console  ${response.status_code}

    #VALIDATIONS
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  201

    ${res_body}=  convert to string  ${response.content}
    should contain  ${res_body}  Sebas  Alfredo  Lopez  10/20/87
    #should contain  ${res_body}  Operation completed successfully