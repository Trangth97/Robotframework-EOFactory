*** Settings ***
Documentation  Test Image Resampling tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     resampling_result
${image}    resampling_image

*** Test Cases ***
ImageResampling
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${resampling}
    Type Name   ${name}
    Select Image    upscale   ${image}
    Type Level  3
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Type Level
    [Arguments]     ${level}
    press keys  ${resampling_level}     CONTROL+A+DELETE
    input text  ${resampling_level}   ${level}



