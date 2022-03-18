*** Settings ***
Documentation  Test Slope tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     slope_result
${image}    dem

*** Test Cases ***
Slope
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${slope}
    Type Name   ${name}
    Select Image    slope   ${image}
    Click Submit Button
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***




