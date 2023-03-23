*** Settings ***
Documentation   Navigate Page
Library         SeleniumLibrary

*** Variables ***
${landind_page}    http://the-internet.herokuapp.com/

*** Test Cases ***
Navigate the Page
    [Tags]     Landing
    Open Browser  about:blank  chrome
    Maximize Browser Window
    Go To    ${landind_page}
    Capture Page Screenshot
    ${current_url} =   Get Location
    Should Be Equal As Strings    ${current_url}    ${landind_page}
