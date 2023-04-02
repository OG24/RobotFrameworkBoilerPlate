*** Settings ***
Documentation       Landing Page
Resource            ${EXECDIR}/Resources/Common.robot

*** Variables ***
${add_remove_page}      http://the-internet.herokuapp.com/add_remove_elements/
${expected_element}     css:button[onclick]
${delete}               css:.added-manually


*** Keywords ***
AddRemovePage.Click Add Button
    Click Element    ${expected_element}

AddRemovePage.Click Delete Button
    [Arguments]     ${index}
    @{delete_buttons}=              Get WebElements     ${delete}
    Click Element                   ${delete_buttons}[${index}]

AddRemovePage.Get Delete Button Counts
    @{delete_buttons}=              Get WebElements     ${delete}
    ${size}=                        Get Length          ${delete_buttons}
    RETURN                          ${size}
