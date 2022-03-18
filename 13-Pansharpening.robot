*** Settings ***
Documentation  Test Pansharpening tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     pansharpening_result
${multispectral_image}  multispectral_image
${panchromatic_image}     panchromatic_image

*** Test Cases ***
Pansharpening
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${pansharpening}
    Type Name   ${name}
    Select Multispectral Image  ${multispectral_image}
    Select Panchromatic Image  ${panchromatic_image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Multispectral Image
    [Arguments]      ${image}
    click element  //*[@id="ardtools_pansharpening_multispectralImage"]/div/div/div[1]
    input text  id:ardtools_pansharpening_multispectralImage_imageSelector_searchInput   ${image}
    click element  id:${image}

Select Panchromatic Image
    [Arguments]      ${image}
    click element  //*[@id="ardtools_pansharpening_panchromaticImage"]/div/div/div[1]
    input text  id:ardtools_pansharpening_panchromaticImage_imageSelector_searchInput    ${image}
    click element  id:${image}




