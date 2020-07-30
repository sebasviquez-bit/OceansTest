*** Keywords ***
Open SmallModal page
    Open Browser  ${URL}  ${Browser}

Click SmallModal Button
    Click Button  ${SmallModal}
    Wait Until Page Contains Element  css: body > div.fade.modal.show > div > div

Close SmallModal popUp
    Click Element  css: body > div.fade.modal.show > div > div > div.modal-header > button > span:nth-child(1)

*** Variables ***
${Browser}  firefox
${URL}  https://demoqa.com/modal-dialogs
${SmallModal}   id: showSmallModal