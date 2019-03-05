*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${HOST}           mio.se
${LOGIN URL}      https://${HOST}/
${DELAY}          1

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Start Page Should Be Open

Start Page Should Be Open
    Title Should Be    Mio - Soffor, Möbler och Inredning | Mio

Input Search
    [Arguments]    ${search}
    Input Text     //input[@class='search-field']    ${search}
    Press Keys     //input[@class='search-field']    RETURN
    Set Selenium Speed    ${DELAY}
