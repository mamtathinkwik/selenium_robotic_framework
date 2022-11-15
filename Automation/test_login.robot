*** Settings ***
Library    Selenium2Library

*** Variables ***
${HOMEPAGE}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}     Chrome

*** Keywords ***
open the browser
        Open Browser    ${HOMEPAGE}    ${BROWSER}

login
    [Arguments]    ${username}    ${password}
    set browser implicit wait    10s
    Input Text    name=username    ${username}
    Input Password     name=password    ${password}
    Click Element    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    sleep    10s
    close browser
    #set browser implicit wait    10s

*** Test Cases ***
OPEN BROWSER
    open the browser

Login on OrangeHRM
     login       Admin    admin123
     #wait until keyword succeeds