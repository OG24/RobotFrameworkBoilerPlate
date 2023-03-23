*** Settings ***
Documentation   First Test
Library         SeleniumLibrary

*** Test Cases ***

Always Passed Case
    [Tags]  Sanity
    Should Be True  ${True}

Always Failed Case
    [Tags]  Sanity
    Should Be True  ${False}