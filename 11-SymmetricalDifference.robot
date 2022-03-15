*** Settings ***
Documentation  Test Symmetrical Difference tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test symmetrical difference
${input_features}   input_features
${update_features}  update_features

*** Test Cases ***
SymmetricalDifferenceTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${symmetrical_difference}
    Type Name  ${name}
    Select Feature  symmetrical_difference  input_features  ${input_features}
    Select Feature  symmetrical_difference  update_features     ${update_features}
    Select Join Attributes  No fid
    Click Submit Button
    Check Success Notification

*** Keywords ***



