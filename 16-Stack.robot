*** Settings ***
Documentation  Test Stack tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     stack_result
${image_1}  image1_
${image_2}  image2_

*** Test Cases ***
Stack
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    press keys  ${type_selector}    stack
    Select Tool     ${stack}
    Type Name   ${name}
    Select Multiple Images  stack   ${image_1}  ${image_2}
    Band Selection
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Band Selection
#cần viết lại
#    [Arguments]  ${image_nth_1}   @{band_nth_1}     ${image_nth_2}  @{band_nth_2}
    click element  ${band_selection_btn}
    click element  //*[@id="band_selectionTable"]/tbody/tr[1]/td[2]/div/div/div    #image_1 band_2
    click element  //*[@id="band_selectionTable"]/tbody/tr[2]/td[3]/div/div/div     #image_2 band_3
    click button  ${band_selection_confirm}







