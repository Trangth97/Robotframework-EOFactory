*** Settings ***
Documentation  Test Clip tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test clip
${vector}   vector_clip_1
${mask_layer}   mask_layer
#cần đánh lại id trong frontend (hiên tại đang là ard)
${search}   id:vectortools_clip_vector_select2_searchInput
${mask_layer_locator}    id:ardtools_clip_maskLayer

*** Test Cases ***
ClipTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${clip}
    Type Name   ${name}
    Select Vector   clip   ${search}   ${vector}
    input text  ${mask_layer_locator}    ${mask_layer}\n
    Click Submit Button
    Check Success Notification

*** Keywords ***




