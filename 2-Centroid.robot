*** Settings ***
Documentation  Test Centroid tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test centroid
${vector}   vector_clip_1
${search}   id:vectortools_centroid_vector_select2_searchInput

*** Test Cases ***
CentroidTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${centroid}
    Type Name   ${name}
    Select Vector   centroid   ${search}   ${vector}
    Click Submit Button
    Check Success Notification

*** Keywords ***
Type Username
    [Arguments]  ${_username}
    input text  ${username}  ${_username}

Type Password
    [Arguments]  ${_password}
    input text  ${password}     ${_password}




