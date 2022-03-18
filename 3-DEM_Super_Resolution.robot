*** Settings ***
Documentation  Test DEM Extraction tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     DEM_extraction_result
${image}    dem

*** Test Cases ***
DEMExtraction
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${dem_super_resolution}
    Type Name   ${name}
    Select Image    demSuperResolution   ${image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***

