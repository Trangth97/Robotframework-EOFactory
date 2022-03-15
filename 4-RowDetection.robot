*** Settings ***
Documentation  Test Row detection tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test row detection
${vector}   vector_row
${search}   id:vectortools_rowDetection_vector_select2_searchInput


*** Test Cases ***
RowDetectionTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${row_detection}
    Type Name   ${name}
    Select Vector   rowDetection   ${search}   ${vector}
    Click Submit Button
    Check Success Notification

*** Keywords ***




