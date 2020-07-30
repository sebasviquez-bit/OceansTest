*** Keywords ***
Open Droppable page
    Open Browser  ${URL}  ${Browser}

DragElement
    Drag And Drop  ${Draggable}  ${Droppable}

*** Variables ***
${Browser}  chrome
${URL}  https://demoqa.com/droppable
${Draggable}  id: draggable
${Droppable}  id: droppable