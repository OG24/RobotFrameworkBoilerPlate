{
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
*** Settings ***
Library               RequestsLibrary

*** Variables ***
&{body}       id=5

*** Test Cases ***
Quick Get Request Test
    ${json_string}=    evaluate    json.dumps(${body})
    ${content-type}=  Create Dictionary     content-type  application/json
    ${response}=    POST    url=https://petstore.swagger.io/v2/pet    data=${json_string}  headers=${content-type}