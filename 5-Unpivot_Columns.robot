*** Settings ***
Documentation  Test Unpivot Columns tool.
Resource  ./Login.robot
Resource    ./Table/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}    unpivot_columns_result
${table}    file5
${select_table_xpath}   //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[1]/div/div/div[1]
${attr_alias}   Year
${value_alias}      TotalSales

*** Test Cases ***
CloudFreeMosaic
    Login To Page And Open Workspace
    Click Table Menu
    Click Table Toolkit
    Select Tool     ${unpivot_columns}
    Type Name   ${name}
    Select Table    ${table}
    Type Attributes Column  ${attr_alias}
    Type Value Column   ${value_alias}
    Click Submit Button

*** Keywords ***
Select Table
    [Arguments]     ${table}
    press keys  ${select_table_xpath}   ${table}\n

Type Attributes Column
    [Arguments]    ${name}
    press keys  ${attributes_col}     CONTROL+A+DELETE
    input text  ${attributes_col}   ${name}

Type Value Column
    [Arguments]    ${name}
    press keys  ${value_col}     CONTROL+A+DELETE
    input text  ${value_col}   ${name}













