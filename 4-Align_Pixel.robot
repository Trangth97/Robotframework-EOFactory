*** Settings ***
Documentation  Test Align Pixel tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     align_pixel_result
${image}    align_pixel_image
${ref_image}    align_pixel_ref_image

*** Test Cases ***
AlignPixel
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${align_pixel}
    Type Name   ${name}
    Select Image  ${image}
    Select Reference Image  ${ref_image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Image
    [Arguments]     ${image}
    click element  //*[@id="ardtools_alginPixel_alignImagery"]/div/div/div[1]
    input text  id:ardtools_alginPixel_alignImagery_imageSelector_searchInput   ${image}
    click element  id:${image}

Select Reference Image
    [Arguments]     ${ref_image}
    click element  //*[@id="ardtools_alginPixel_baseImagery"]/div/div/div[1]
    input text  id:ardtools_alginPixel_baseImagery_imageSelector_searchInput    ${ref_image}
    click element  id:${ref_image}

