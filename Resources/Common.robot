*** Settings ***
Documentation       Common Steps
Library             SeleniumLibrary

*** Variables ***
${landind_page}         http://the-internet.herokuapp.com/

*** Keywords ***
Test Setup Actions
    Open Browser                    about:blank  chrome
    Maximize Browser Window
    Go To                           ${landind_page}

Suite Teardown Actions
    Close All Browsers