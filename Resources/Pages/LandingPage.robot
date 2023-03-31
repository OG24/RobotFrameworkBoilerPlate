*** Settings ***
Documentation       Landing Page
Resource            ${EXECDIR}/Resources/Common.robot

*** Variables ***
${landind_page}                 http://the-internet.herokuapp.com/
${AB_testing_page_link}         css:[href="/abtest"]
${add_remove_page_link}         css:[href="/add_remove_elements/"]


*** Keywords ***
Click AB Testing Page
    Click Element    ${AB_testing_page_link}

Click Add Remove Page
    Click Element    ${add_remove_page_link}