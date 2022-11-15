*** Settings ***
Library      ../src/func.py

*** Test Cases ***
Calling function from python
    ${value}        CUSTOM KEYWORD TO ADD     ${1}
    SHOULD BE EQUAL        ${value}           ${2}