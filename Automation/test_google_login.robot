*** Settings ***
Library    Selenium2Library

*** Variables ***
${HOMEPAGE}    http://www.gmail.com
${BROWSER}     Chrome

*** Keywords ***
open the browser
        Open Browser    ${HOMEPAGE}    ${BROWSER}

login
    [Arguments]    ${email}    ${password}
    Input Text    id=identifierId     ${email}
    Click Button    xpath=//*[@id="identifierNext"]/div/button
    Set Browser Implicit Wait    10
    Input Text    xpath=//*[@id="password"]/div[1]/div/div[1]/input    ${password}
    Click Element    xpath=//*[@id="passwordNext"]/div/button
    #set browser implicit wait    10s

*** Test Cases ***
OPEN BROWSER
    open the browser

Login on Gmail
     login       mamtamaloo10@gmail.com    9098559513
     #wait until keyword succeeds
