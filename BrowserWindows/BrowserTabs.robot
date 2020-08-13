*** Settings ***
Library  SeleniumLibrary

Suite Setup  Set selenium speed  0.5s
Suite Teardown  Close browser

*** Test Cases ***
Nex Tab Navigation
    Open Homepage
    Maximize browser window
    Navigate to Events tab
    Navigate to FavoritesEvents tab

*** Keywords ***
Open Homepage
    Open browser  ${url}  chrome

Navigate to Events tab
    Click Element  css:#site-header > div > div.desktop-header > div > div.utility-header > nav:nth-child(1) > a:nth-child(1)
    Switch Window  url:https://webapps.akc.org/event-search/#/search
    #Select Window  url:https://webapps.akc.org/event-search/#/search
    Wait until page contains  AKC Event Search & Results
    #Close Browser

Navigate to FavoritesEvents tab
   Click Element  ${Events}
   Switch Window  url:https://www.apps.akc.org/apps/online_accounts/index.cfm


*** Variables ***
${URL}  https://www.akc.org/
${Events}  css:body > div.bgc-white.cmw > div > div > app-root > main > div.container.custom-container > div > div.col-12.col-lg-4 > a