*** Settings ***
Documentation  Test Advanced Mosaic tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     advanced_mosaic_result
${image_1}  mosaic_1
${image_2}  mosaic_2

*** Test Cases ***
AdvancedMosaic
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${advanced_mosaic}
    Type Name   ${name}
    Select Multiple Images  advancedMosaic  ${image_1}  ${image_2}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***

