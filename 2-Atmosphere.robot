*** Settings ***
Documentation  Test Atmosphere tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     atmosphere_result
${image}    atmosphere_image

*** Test Cases ***
Atmosphere
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${atmosphere}
    Type Name   ${name}
    Select Image    atmosphere  ${image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***

