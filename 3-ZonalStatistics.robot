*** Settings ***
Documentation  Test Zonal Statistics a Table tool.
Resource  ./Login.robot
Resource    ./Table/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     zone 3288
${image}    image_clip_1
${vector}   vector_clip_1

*** Test Cases ***
ZonalStatistics
    Login To Page And Open Workspace
    Click Table Menu
    Click Table Toolkit
    Select Tool     ${zonal_statistics}
    Type Name   ${name}
    Select Image  zonal_as_table    ${image}
    Select Vector  ${vector}
    Select Property
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***

