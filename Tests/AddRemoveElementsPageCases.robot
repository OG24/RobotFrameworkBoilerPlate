*** Settings ***
Documentation       Add/Remove Testing Cases
Library             SeleniumLibrary
Resource            ./../Resources/Common.robot
Test Setup          Test Setup Actions
Suite Teardown      Suite Teardown Actions


*** Variables ***
${add_remove_page}      http://the-internet.herokuapp.com/add_remove_elements/
${expected_element}     css:button[onclick]
${delete}               css:.added-manually


*** Test Cases ***
Navigate the Add/Remove Page
    [Tags]                          Add Remove
    Click Element                   css:[href="/add_remove_elements/"]
    ${current_url} =                Get Location
    Should Be Equal As Strings      ${current_url}    ${add_remove_page}
    Page Should Contain             Add/Remove Elements
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    1


Add Element
    [Tags]                          Add
    Click Element                   css:[href="/add_remove_elements/"]

    Click Element                   ${expected_element}
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    2

    FOR    ${_}    IN RANGE    5
        Click Element                   ${expected_element}
    END
    ${count} =                      Get Element Count   ${expected_element}
    Should Be Equal As Integers     ${count}    7

Remove Element
    [Tags]                          Remove
    Set Selenium Speed              0.5s
    Click Element                   css:[href="/add_remove_elements/"]

    FOR    ${_}    IN RANGE    6
        Click Element                   ${expected_element}
    END
    @{delete_buttons}=              Get WebElements     ${delete}
    ${size}=                        Get Length          ${delete_buttons}

    Click Element                   ${delete_buttons}[3]
    @{delete_buttons}=              Get WebElements     ${delete}
    ${size}=                        Get Length          ${delete_buttons}
    Should Be Equal As Integers     ${size}             5

    Click Element                   ${delete_buttons}[1]
    @{delete_buttons}=              Get WebElements     ${delete}
    Click Element                   ${delete_buttons}[0]
    @{delete_buttons}=              Get WebElements     ${delete}
    ${size}=                        Get Length    ${delete_buttons}
    Should Be Equal As Integers     ${size}    3
