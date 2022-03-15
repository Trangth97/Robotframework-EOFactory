*** Settings ***
Documentation  Test Kmeans tool.
Resource  ./Login.robot
#Resource  ./Vector/PageObject/Page.robot
Resource  ./Unsupervised/PageObject/Pages.robot
Test Teardown  Close Browser

*** Variables ***
${name}     kmeans_result
${image}   unsupervised_image
${advance_option}     id:advance_option
${method}   //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[2]/div/div/div/div/div[1]/div/div/div[1]
${algorithm}    //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[2]/div/div/div/div/div[8]/div/div/div[1]

*** Test Cases ***
KmeansTool
    Login To Page And Open Workspace
    Click Map Menu
    Click Tools Toolbar
    Select Unsupervised Toolkit
    Select Tool  ${kmeans}
    Type Name  ${name}
    Select Image  kmean     ${image}
    Type Number of Clusters  6
    Open Advance Option
    press keys  ${method}    TAB
    Select Method   ${method}  R
    Type Number of init  12
    Type Maximum iterations  200
    Type Relative tolerance  0.001
    Type Verbosity mode  1
    Type Random state  1
    Select Algorithm  F
    Click Submit Button
    Check Success Notification

*** Keywords ***
Type Number of Clusters
    [Arguments]  ${clusters}
    press keys  ${number_of_clusters}     CONTROL+A+DELETE
    input text   ${number_of_clusters}   ${clusters}

Open Advance Option
    click element  ${advance_option}

Select Method
    [Arguments]  ${method}  ${option}
    click element  ${method}
    press keys  ${method}    ${option}\n

Type Number of init
    [Arguments]  ${number}
    press keys  ${number_of_init}     CONTROL+A+DELETE
    input text  ${number_of_init}   ${number}

Type Maximum iterations
    [Arguments]  ${value}
    press keys  ${maximum_iterations}     CONTROL+A+DELETE
    input text  ${maximum_iterations}   ${value}

Type Relative tolerance
    [Arguments]  ${value}
    press keys  ${relative_tolerance}     CONTROL+A+DELETE
    input text      ${relative_tolerance}   ${value}

Type Verbosity mode
    [Arguments]  ${value}
    press keys  ${verbosity_mode}     CONTROL+A+DELETE
    input text  ${verbosity_mode}   ${value}

Type Random state
    [Arguments]  ${value}
    input text  ${random_state}   ${value}
    press keys  None  TAB

Select Algorithm
    [Arguments]  ${option}
    click element  ${algorithm}
    press keys  None     ${option}\n



