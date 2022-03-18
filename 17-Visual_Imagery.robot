*** Settings ***
Documentation  Test Visual Imagery tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     visual_result
${image}    visual_image
${reference_image}  visual_ref_image

*** Test Cases ***
VisualImagery
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    press keys  ${type_selector}    visual
    Select Tool     ${visual}
    Type Name   ${name}
    Select Image    visual   ${image}
    Select Reference Image  ${reference_image}
    Type Cumulative Min    3
    Type Cumulative Max  90
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Reference Image
    [Arguments]  ${image}
    click element  //*[@id="ardtools_visual_referenceImage"]/div/div/div[1]
    input text  id:ardtools_visual_referenceImage_imageSelector_searchInput   ${image}
    click element  id:${image}

Type Cumulative Min
    [Arguments]  ${min}
    press keys  ${cumulative_min}     CONTROL+A+DELETE
    input text  ${cumulative_min}  ${min}
    press key  ${cumulative_min}   TAB

Type Cumulative Max
    [Arguments]  ${max}
    press keys  ${cumulative_max}     CONTROL+A+DELETE
    input text  ${cumulative_max}  ${max}

