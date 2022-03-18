*** Settings ***
Resource  ./Login.robot
Resource  ./Training/Page.robot
Test Teardown  Close Browser

*** Variables ***
${ten}     model_1
${type}     classification
${image}    road_image
${area_layer}   area
${class_layer}  road

*** Test Cases ***
Training Classification
    Login To Page And Open Workspace
    Go to Training
    Type Training input     ${ten}     ${type}
    Select Image  ${image}
    Select Destination Folder
    Training Dataset  ${area_layer}     ${class_layer}

*** Keywords ***



