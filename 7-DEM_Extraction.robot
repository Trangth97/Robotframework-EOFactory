*** Settings ***
Documentation  Test DEM Extraction tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     DEM_extraction_result
${image_1}    dem_extraction_image_1
${image_2}    dem_extraction_image_2

*** Test Cases ***
DEMExtraction
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${dem_extraction}
    Type Name   ${name}
    Select Multiple Images    demExtraction   ${image_1}  ${image_2}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
