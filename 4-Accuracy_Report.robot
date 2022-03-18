*** Settings ***
Documentation  Test Accuracy Report tool.
Resource  ./Login.robot
Resource    ./Table/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     accuracy_report_result
${image}   Lacs_S2A_L1C
${ref_image}   Lacs_lc08

*** Test Cases ***
CloudFreeMosaic
    Login To Page And Open Workspace
    Click Table Menu
    Click Table Toolkit
    Select Tool     ${accuracy_report}
    Type Name   ${name}
    Select Image  accuracy_report   ${image}
    Select Reference Image  ${ref_image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select Reference Image
    [Arguments]     ${image}
    click element  //*[@id="tabletools_accuracy_report_reference_image"]/div/div/div[1]
    input text  id:tabletools_accuracy_report_reference_image_imageSelector_searchInput     ${image}
    click element  id:${image}



