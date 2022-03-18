*** Settings ***
Documentation  Test Orthorectify tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     orthorectify_result
${image}    ortho_image
${ref_image}    ortho_image_reference
${DEM_selector}  //*[@id="ardtools_orthorectify_DEM"]/div/div/div[1]
${DEM_image}    dem
${method}   //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[10]/div/div/div[1]

*** Test Cases ***
Orthorectify
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${orthorectify}
    Type Name   ${name}
    Select Reference Image  orthorectify  ${ref_image}
    Select Image  orthorectify  ${image}
    Select DEM  ${DEM_image}
    Type param  matchingBand    2
    Type param  gcps    95
    Type param  minScore    80
    Select method  NCC
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select DEM
    [Arguments]  ${image}
    click element  ${DEM_selector}
    input text  id:ardtools_orthorectify_DEM_imageSelector_searchInput  ${DEM_image}
    click element  id:${DEM_image}

Type param
    [Arguments]  ${type}    ${value}
    press keys  ${param_pre}${type}     CONTROL+A+DELETE
    input text   ${param_pre}${type}    ${value}

Select method
    [Arguments]  ${option}
    press keys      ${method}   ${option}\n











