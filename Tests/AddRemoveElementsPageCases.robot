*** Settings ***
Documentation       Add/Remove Testing Cases
Library             SeleniumLibrary
Resource            ./../Resources/Common.robot
Resource            ../Resources/Pages/LandingPage.robot
Resource            ./../Resources/Pages/AddRemovePage.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions



*** Test Cases ***
Navigate the Add/Remove Page
    [Tags]                          Add Remove
    Click Add Remove Page
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${add_remove_page}
    Page Should Contain             Add/Remove Elements
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    1


Add Element
    [Tags]                          Add
    Click Add Remove Page

    Click Add Button
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    2

    FOR    ${_}    IN RANGE    5
        Click Add Button
    END
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    7

Remove Element
    [Tags]                          Remove
    Set Selenium Speed              0.5s
    Click Add Remove Page

    FOR    ${_}    IN RANGE    6
        Click Add Button
    END

    Click Delete Button     3
    ${size}=                        Get Delete Button Counts
    Should Be Equal As Integers     ${size}                             5

    Click Delete Button             1
    Click Delete Button             0
    ${size}=                        Get Delete Button Counts
    Should Be Equal As Integers     ${size}    3
