*** Settings ***
Documentation       Landing Page Cases
Library             SeleniumLibrary
Resource            ./../Resources/Common.robot
Resource            ./../Resources/Pages/LandingPage.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions


*** Test Cases ***
Navigate the Page
    [Tags]                          Landing
    Capture Page Screenshot
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${landind_page}
