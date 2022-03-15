*** Settings ***
Documentation  Test Update tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test update
${input_features}   input_features
${update_features}  update_features

*** Test Cases ***
UpdateTool
   Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${update}
    Type Name  ${name}
    Select Feature  update  input_features  ${input_features}
    Select Feature  update  update_features  ${update_features}
    Select Keep Borders     No
    Click Submit Button
    Check Success Notification

*** Keywords ***
Select Keep Borders
    [Arguments]     ${option}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[3]/div/div/div[1]
    # default: border
    input text  id:vectortools_update_keep_borders  ${option}\n  #No borders









