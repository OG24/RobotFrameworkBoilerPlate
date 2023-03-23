*** Settings ***
Documentation   First Test

*** Test Cases ***
Always Passed Case
    [Tags]          Sanity  Pass
    Should Be True  ${True}

Always Failed Case
    [Tags]          Sanity  Fail
    Should Be True  ${False}
