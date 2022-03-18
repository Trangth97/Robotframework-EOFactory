*** Settings ***
Documentation  Test Buffer tool.
Resource  ./Login.robot
Resource    ./Vector/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     test buffer
${vector}   vector_clip_1
${search}   id:vectortools_buffer_vector_select2_searchInput

*** Test Cases ***
BufferTool
    Login To Page And Open Workspace
    Click Vector Menu
    Click Vector Toolkit
    Select Tool     ${buffer}
    Type Name   ${name}
    Select Vector   buffer   ${search}   ${vector}
    Type Distance_Resolution_Quadsegs   20  20  80
    Select Cap Style  Square
    Select Join Style  Mitre
    Type Mitre Limit    2
    Click Submit Button
    Check Success Notification

*** Keywords ***
Type Distance_Resolution_Quadsegs
    [Arguments]    ${_resolution}   ${quad}     ${dis}
    press keys  ${distance}     CONTROL+A+DELETE
    input text  ${distance}    ${dis}
    input text  ${buffer_resolution}   ${_resolution}
    input text  ${quadsegs}     ${quad}

Select Cap Style
    [Arguments]     ${option}
    press keys    ${cap_style}  ${option}\n+TAB

Select Join Style
    [Arguments]     ${option}
    press keys  None    ${option}\n

Type Mitre Limit
    [Arguments]      ${mi}
    press keys     ${mitre_limit}   BACKSPACE   #or press key  ${mitre_limit}   \\08
    input text   ${mitre_limit}   ${mi}














