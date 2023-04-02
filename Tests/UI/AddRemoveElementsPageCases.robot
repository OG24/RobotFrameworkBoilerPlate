*** Settings ***
Documentation       Add/Remove Testing Cases
Library             SeleniumLibrary
Resource            ${EXECDIR}/Resources/Common.robot
Resource            ${EXECDIR}/Resources/Pages/LandingPage.robot
Resource            ${EXECDIR}/Resources/Pages/AddRemovePage.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions



*** Test Cases ***
Navigate the Add/Remove Page
    [Tags]                          Add Remove
    LandingPage.Click Add Remove Page
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${add_remove_page}
    Page Should Contain             Add/Remove Elements
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    1


Add Element
    [Tags]                          Add
    LandingPage.Click Add Remove Page

    AddRemovePage.Click Add Button
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    2

    FOR    ${_}    IN RANGE    5
        AddRemovePage.Click Add Button
    END
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    7

Remove Element
    [Tags]                          Remove
    Set Selenium Speed              0.5s
    LandingPage.Click Add Remove Page

    FOR    ${_}    IN RANGE    6
        AddRemovePage.Click Add Button
    END

    AddRemovePage.Click Delete Button             3
    ${size}=                        AddRemovePage.Get Delete Button Counts
    Should Be Equal As Integers     ${size}                             5

    AddRemovePage.Click Delete Button             1
    AddRemovePage.Click Delete Button             0
    ${size}=                        AddRemovePage.Get Delete Button Counts
    Should Be Equal As Integers     ${size}    3
