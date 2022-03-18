*** Settings ***
Documentation  Test DEM Extraction tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     down_scale_result
${down_scale_image}     down_scale_image

*** Test Cases ***
DownScale
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${down_scale}
    Type Name   ${name}
    Select Image   downscale    ${down_scale_image}
    Select Level  4
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Level
    [Arguments]     ${option}
    input text  ${down_scale_level}  ${option}\n


