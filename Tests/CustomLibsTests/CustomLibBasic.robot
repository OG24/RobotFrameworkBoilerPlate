*** Settings ***
Documentation       Custom Lib Cases
Library             ${EXECDIR}/CustomLibs/custom_lib.py

*** Variables ***
${expected_name}       Onur Gürel

*** Test Cases ***
Navigate the Page
    [Tags]                          CustomLib
    ${creator_name}=                Get Creator Name
    Should Be Equal As Strings      ${expected_name}    ${creator_name}