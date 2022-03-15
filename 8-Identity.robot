*** Settings ***
Documentation  Test Identity tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test identity
${input_features}   input_features
${identity_features}   identity_features

*** Test Cases ***
IdentityTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${identity}
    Type Name  ${name}
    Select Feature  identity    input_features  ${input_features}
    Select Feature  identity    indentity_features    ${identity_features}
    Select Join Attributes  Only
    Select Relationship  Keep
    Click Submit Button
    Check Success Notification

*** Keywords ***
Select Relationship
    [Arguments]     ${type}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[4]/div/div/div[1]
    press keys  None    ${type}\n








