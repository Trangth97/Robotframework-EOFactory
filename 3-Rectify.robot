*** Settings ***
Documentation  Test Rectify tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test rectify
${vector}   vector_clip_1
${search}   id:vectortools_rectify_vectorResult_select2_searchInput

*** Test Cases ***
RectifyTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${rectify}
    Type Name   ${name}
    Select Vector     ${search}   ${vector}
    Type Resolution  10
    Click Submit Button
    Check Success Notification

*** Keywords ***
Select Vector
    [Arguments]   ${search_id}    ${vector_name}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div/div[1]/div/div/div
    input text      ${search_id}      ${vector_name}
    click element    vectortools_rectify_vectorResult_select2_resultList_item_0

Type Resolution
    [Arguments]     ${res}
    input text  ${rectify_resolution}   ${res}




