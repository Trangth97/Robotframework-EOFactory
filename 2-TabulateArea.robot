*** Settings ***
Documentation  Test TabulateArea tool.
Resource  ./Login.robot
Resource    ./Table/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     tabulate area 1
${mask_image_locator}    //*[@id="tabletools_tabulate_area_mask_image"]/div/div/div[1]
${image}    image_clip_1
${mask_image}   mask_image
${value}   3288
${vector}   vector_clip_1

*** Test Cases ***
TabulateAreaTool
    Login To Page And Open Workspace
    Click Table Menu
    Click Table Toolkit
    Select Tool     ${tabulate_area}
    Type Name   ${name}
    Select Image  tabulate_area   ${image}
    Select Mask Image  ${mask_image}
    Type Mask Value     ${value}
    Select Vector  ${vector}
    Select Property
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Mask Image
    [Arguments]  ${image}
    click element  ${mask_image_locator}
    input text      ${mask_image_search}   ${image}
    click element  id:${image}

Type Mask Value
    [Arguments]  ${value}
    input text  ${mask_value}   ${value}


