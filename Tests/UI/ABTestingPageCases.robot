*** Settings ***
Documentation   AB Testing Cases
Library         SeleniumLibrary
Resource            ${EXECDIR}/Resources/Common.robot
Resource            ${EXECDIR}/Resources/Pages/LandingPage.robot
Resource            ${EXECDIR}/Resources/Pages/ABTestingPage.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions


*** Test Cases ***
Navigate the AB Testing Page
    [Tags]                          AB
    Click AB Testing Page
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${ab_testing_page}
