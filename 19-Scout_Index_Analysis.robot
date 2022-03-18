*** Settings ***
Documentation  Test Scout Index Analysis tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     scout_index_analysis_result
${image}    HaNoi
${tool_setting}     id:tool_setting
${confirm_btn}     id:ard_socutIndexAnalysis_confirmButton

*** Test Cases ***
DEMExtraction
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${scout_index_analysis}
    Type Name   ${name}
    Select Image  scout_index_analysis  ${image}
    Open Tool Setting
    Select band  1    3     #red_band
    Select band  2    2     #green_band
    Select band  3   1      #blue_band
    Select band  4   4      #nir band
    Confirm Scout Index
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Open Tool Setting
    click button  ${tool_setting}

Select band
    [Arguments]  ${band_type}   ${band}
    click element  //*[@id="crop_scout"]/div/div[${band_type}]/div/div[1]
    IF  ${band}==1
        press keys  None     ARROW_DOWN+ENTER
    ELSE IF  ${band}==2
        press keys  None     ARROW_DOWN+ARROW_DOWN+ENTER
    ELSE IF  ${band}==3
        press keys  None    ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ENTER
    ELSE
        press keys  None    ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ENTER
    END

Confirm Scout Index
    click button  ${confirm_btn}

