*** Settings ***
Documentation  Test Isodata tool.
Resource  ./Login.robot
Resource  ./Unsupervised/PageObject/Pages.robot
Test Teardown  Close Browser

*** Variables ***
${name}     isodata_result
${image}   unsupervised_image

*** Test Cases ***
IsodataTool
    Login To Page And Open Workspace
    Click Map Menu
    Click Tools Toolbar
    Select Unsupervised Toolkit
    Select Tool  ${isodata}
    Type Name  ${name}
    Select Image  isodata     ${image}
    Type Number of Clusters Desired     16
    Type Minimum Number of Clusters     16
    Type Maximum Number of Clusters     20
    Type Maximum Number of Iterations       20
    Type Movement Threshold     0.02
    Type Minimum Sample Threshold   6
    Type Standard Deviation     10
    Type Lumping Parameter  2
    Type Maximum Number of Lumping Pairs    5
    Type Background Gray Level Value    1
    Click Submit Button
    Check Success Notification

*** Keywords ***
Type Number of Clusters Desired
    [Arguments]  ${clusters}
    press keys   ${number_of_clusters_desired}     CONTROL+A+DELETE
    input text   ${number_of_clusters_desired}   ${clusters}

Type Minimum Number of Clusters
    [Arguments]  ${number}
    press keys   ${mimnimum_number_of_clusters}     CONTROL+A+DELETE
    input text  ${mimnimum_number_of_clusters}   ${number}

Type Maximum Number of Clusters
    [Arguments]  ${value}
    press keys   ${maximum_number_of_clusters}     CONTROL+A+DELETE
    input text  ${maximum_number_of_clusters}   ${value}
    press keys  None  TAB

Type Maximum Number of Iterations
    [Arguments]  ${value}
    press keys   ${maximum_number_of_iterations}     CONTROL+A+DELETE
    input text      ${maximum_number_of_iterations}   ${value}
    press keys  None  TAB

Type Movement Threshold
    [Arguments]  ${value}
    press keys   ${movement_threshold}     CONTROL+A+DELETE
    input text  ${movement_threshold}   ${value}
    press keys  None  TAB

Type Minimum Sample Threshold
    [Arguments]  ${value}
    press keys   ${minimum_sample_threshold}     CONTROL+A+DELETE
    input text  ${minimum_sample_threshold}   ${value}
    press keys  None  TAB

Type Standard Deviation
    [Arguments]  ${value}
    press keys   ${standard_deviation}     CONTROL+A+DELETE
    input text  ${standard_deviation}   ${value}
    press keys  None  TAB

Type Lumping Parameter
    [Arguments]  ${value}
    press keys   ${lumping_parameter}     CONTROL+A+DELETE
    input text  ${lumping_parameter}   ${value}
    press keys  None  TAB

Type Maximum Number of Lumping Pairs
    [Arguments]  ${value}
    press keys   ${maximum_number_of_lumping_pairs}     CONTROL+A+DELETE
    input text  ${maximum_number_of_lumping_pairs}   ${value}
    press keys  None  TAB

Type Background Gray Level Value
    [Arguments]  ${value}
    input text  ${background_gray_level_value}   ${value}


