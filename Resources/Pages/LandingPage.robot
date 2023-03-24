*** Settings ***
Documentation       Landing Page
Resource            ./../Common.robot

*** Variables ***
${landind_page}                 http://the-internet.herokuapp.com/
${AB_testing_page_link}         css:[href="/abtest"]


*** Keywords ***
Click AB Testing Page
    Click Element    ${AB_testing_page_link}