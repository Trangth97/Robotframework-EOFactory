*** Settings ***
Documentation  Test Zonal tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     zonal_result
${image}    zonal_image
${vector}   zonal_vector

*** Test Cases ***
Zonal
  Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    press keys  ${type_selector}    zonal
    Select Tool     ${zonal}
    Type Name   ${name}
    Select Image    zonal   ${image}
    Select Vector  ${vector}
    Select Algorithm  Mean
    Type Ignore Value   10
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Vector
    [Arguments]  ${vector}
    click element  //*[@id="ardtools_zonal_vector"]/div/div/div
    input text  id:ardtools_zonal_vector_select2_searchInput    ${vector}
    click element  id:ardtools_zonal_vector_select2_resultList_item_0

Select Algorithm
    [Arguments]  ${option}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[6]/div/div/div[1]
    press keys  ${algorithm}     CONTROL+A+DELETE
    input text  ${algorithm}    ${option}\n
    press keys  ${algorithm}    TAB

Type Ignore Value
    [Arguments]  ${value}=None
    input text  ${ignore_value}     ${value}



