*** Keywords ***
OpenHomepage
    Open Browser  ${URL}  ${browser}
    Title Should Be  ToolsQA

Enter FirstName
    Input Text  ${FirstName}  Sebastian

Enter LastName
    Input Text  ${LastName}  Viquez

Enter Email
    Input text  ${Email}  sebas.viquez@gmail.com

Select Gender
    Click Element  css:#genterWrapper > div.col-md-9.col-sm-12 > div:nth-child(1) > label

Enter Mobile
    Input text  ${Mobile}  5087118400

Enter DateOfBirth
    Click Element  ${DateOfBirth}
    Click Element  css: #dateOfBirth > div.react-datepicker__tab-loop > div.react-datepicker-popper > div > div > div.react-datepicker__month-container > div.react-datepicker__header > div.react-datepicker__header__dropdown.react-datepicker__header__dropdown--select > div.react-datepicker__month-dropdown-container.react-datepicker__month-dropdown-container--select > select > option:nth-child(10)
    Click Element  css: #dateOfBirth > div.react-datepicker__tab-loop > div.react-datepicker-popper > div > div > div.react-datepicker__month-container > div.react-datepicker__header > div.react-datepicker__header__dropdown.react-datepicker__header__dropdown--select > div.react-datepicker__year-dropdown-container.react-datepicker__year-dropdown-container--select > select > option:nth-child(87)
    Click Element  css: #dateOfBirth > div.react-datepicker__tab-loop > div.react-datepicker-popper > div > div > div.react-datepicker__month-container > div.react-datepicker__month > div:nth-child(4) > div.react-datepicker__day.react-datepicker__day--020

Enter Subject
    Wait Until Element Is Enabled  ${Subject}
    Set Focus To Element  id: subjectsContainer
    Click Element  id: subjectsContainer
    Input text  ${Subject}  Test

Select Hobbies
    Click Element  css: #hobbiesWrapper > div.col-md-9.col-sm-12 > div:nth-child(1) > label

Upload Picture
    Wait Until Page Contains Element  ${ChooseFile}
    #Click Element  css: #userForm > div:nth-child(8) > div.col-md-9.col-sm-12 > div > label
    Choose File  ${ChooseFile}  ${CURDIR}/Product1.jpg

Enter Address
    Input text  ${Address}  Heredia

Select State
    Scroll Element Into View  id:submit
    Wait Until Page Contains Element  css:#state > div > div.css-1wy0on6
    Click Element  css:#state > div > div.css-1wy0on6
    Input text  id: react-select-3-input  u
    Press Keys  id: react-select-3-input  ENTER

Select City
    Scroll Element Into View  id:submit
    Wait Until Page Contains Element  css: #city > div > div.css-1wy0on6 > div
    Click Element  css: #city > div > div.css-1wy0on6 > div
    Input Text  id: react-select-4-input  a
    Press Keys  react-select-4-input  ENTER

Click Submit
    Click Element  id: submit
    Wait Until Page Contains Element  id: example-modal-sizes-title-lg

*** Variables ***

${URL}   https://demoqa.com/automation-practice-form
${Browser}  chrome
${FirstName}  id: firstName
${LastName}   id: lastName
${Email}      css: #userEmail
${Mobile}     css: #userNumber
${DateOfBirth}  css: #dateOfBirthInput
${Subject}      xpath: //body/div[@id='app']/div/div/div/div/div/form[@id='userForm']/div[@id='subjectsWrapper']/div/div[@id='subjectsContainer']/div/div[1]
${ChooseFile}   xpath: //input[@id='uploadPicture']
${AddFile}      /Users/user/Documents/Product1.jpg
${Address}      css: #currentAddress