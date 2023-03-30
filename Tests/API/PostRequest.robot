*** Settings ***
Library                 RequestsLibrary
Library                 OperatingSystem

*** Variables ***
&{content-type}                    content-type=application/json
&{body_basic}                      id=5
${payload_string_path}             ${EXECDIR}/Resources/Data/pet.json


*** Test Cases ***
Quick POST Request Test
    ${json_string}=             evaluate    json.dumps(${body_basic})
    ${response}=                POST        url=https://petstore.swagger.io/v2/pet    data=${json_string}  headers=${content-type}
    Status Should Be            200

POST Request from File Test
    ${payload_string}           Get file    ${payload_string_path}
    ${response}=                POST        url=https://petstore.swagger.io/v2/pet    data=${payload_string}  headers=${content-type}
    Status Should Be            200

    ${json_response}=           Set Variable   ${response.json()}
    ${json_payload}=            Evaluate        json.loads('''${payload_string}''')     json

    Should Be Equal As Integers     ${json_response['id']}          ${json_payload['id']}
    Should Be Equal As Strings      ${json_response['name']}        ${json_payload['name']}
