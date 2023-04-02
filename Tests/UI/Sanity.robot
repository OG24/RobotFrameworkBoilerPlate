*** Settings ***
Documentation   Sanity Cases


*** Test Cases ***
Always Passed Case
    [Tags]          Sanity  Pass
    Should Be True  ${True}
