*** Settings ***
Documentation   AB Testing Cases
Library         SeleniumLibrary
Resource            ./../Resources/Common.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions


*** Variables ***
${ab_testing_page}      http://the-internet.herokuapp.com/abtest


*** Test Cases ***
Navigate the AB Testing Page
    [Tags]                          AB
    Click Element                   css:[href="/abtest"]
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${ab_testing_page}
    Page Should Contain             A/B Test Variation
    Page Should Contain             Also known as split testing.
