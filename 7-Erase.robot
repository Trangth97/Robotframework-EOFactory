*** Settings ***
Documentation  Test Erase tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test erase
${input_features}   input_features
${erase_features}   erase_features

*** Test Cases ***
EraseTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${erase}
    Type Name  ${name}
    Select Feature  erase   input_features  ${input_features}
    Select Feature  erase   erase_features    ${erase_features}
    Click Submit Button
    Check Success Notification

*** Keywords ***




