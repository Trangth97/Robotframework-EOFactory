*** Settings ***
Documentation  Test Hillshade tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     hillshade_result
${image}    dem

*** Test Cases ***
Hillshade
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${hillshade}
    Type Name   ${name}
    Select Image  hillshade     ${image}
    Type zFactor  2
    Type Scale  2
    Type Azimuth of the light  320
    Type Altitude of the light  45
#    select option
    click element   //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[10]/div/div/div/div/div
    Select Shading type  Multidirectional
    Click Submit Button
    Confirm Pay Cost
    sleep  0.5
    Check Success Notification

*** Keywords ***
Type zFactor
    [Arguments]  ${input}
    press keys  ${z_factor}     CONTROL+A+DELETE
    input text  ${z_factor}     ${input}

Type Scale
    [Arguments]  ${input}
    press keys  ${scale}     CONTROL+A+DELETE
    input text  ${scale}     ${input}
    press keys  ${scale}    TAB

Type Azimuth of the light
    [Arguments]  ${input}
    press keys  ${azimuth}     CONTROL+A+DELETE
    input text  ${azimuth}     ${input}
    press keys  ${azimuth}    TAB

Type Altitude of the light
    [Arguments]  ${input}
    press keys  ${altitude}     CONTROL+A+DELETE
    input text  ${altitude}     ${input}
    press keys  ${altitude}    TAB

Select Shading type
    [Arguments]  ${option}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[11]/div/div/div[1]
    input text  ${shading_type}   ${option}\n





