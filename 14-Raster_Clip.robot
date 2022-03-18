*** Settings ***
Documentation  Test Raster Clip tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     raster_clip_result
${image}    HaNoi
${mask_layer}    ThanhOai
${checkbox}     //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[6]/div/div/div/div/div


*** Test Cases ***
RasterClip
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${raster_clip}
    Type Name   ${name}
    Select Image  clip  ${image}
    Select Mask Layer   ${mask_layer}
    click element  ${checkbox}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Mask Layer
    [Arguments]   ${image}
    press keys  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[5]/div/div/div[1]    ${mask_layer}\n


