*** Settings ***
Documentation  Test Simplify tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test simplify
${vector}   vector_clip_1
${search}   id:vectortools_simplify_vector_select2_searchInput
${tolerance}    id:vectortools_simplify_tolerance

*** Test Cases ***
SimplifyTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool  ${simplify}
    Type Name   ${name}
    Select Vector  simplify   ${search}   ${vector}
    Type Tolerance  80
    Click Submit Button
    Check Success Notification

*** Keywords ***
Type Tolerance
    [Arguments]      ${tol}
    press keys  ${tolerance}    CONTROL+A+DELETE
    input text   ${tolerance}    ${tol}




