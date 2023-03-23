*** Settings ***
Documentation   Navigate Page
Library         SeleniumLibrary

*** Variables ***
${landind_page}         http://the-internet.herokuapp.com/
${ab_testing_page}      http://the-internet.herokuapp.com/abtest


*** Test Cases ***
Navigate the AB Testing Page
    [Tags]                      AB
    Open Browser                about:blank  chrome
    Maximize Browser Window
    Go To                       ${landind_page}
    Click Element               css:[href="/abtest"]
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${ab_testing_page}
    Page Should Contain    A/B Test Variation 1
    Page Should Contain    Also known as split testing.