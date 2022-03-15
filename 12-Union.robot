*** Settings ***
Documentation  Test Union tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${type}     id:vectortools_typeList_union
${name}     test union
${input_features}   input_features

*** Test Cases ***
UnionTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${union}
    Type Name  ${name}
    Select Features
    Select Join Attributes  No fid
    Select Gaps  No
    Click Submit Button
    Check Success Notification

*** Keywords ***
Select Features
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div/div/div[1]
    input text  id:vectortools_union_input_features     ${input_features}\n
    press keys  id:vectortools_union_input_features    TAB

Select Gaps
    [Arguments]  ${option}
    press keys  None  ${option}\n




