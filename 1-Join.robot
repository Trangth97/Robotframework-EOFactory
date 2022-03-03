*** Settings ***
Documentation  Test Join tool.
Resource  ./Login.robot
Resource  ./Table/PageObject/Page.robot
#Test Teardown  Close Browser

*** Variables ***
${name}     inner join 12
${search}   id:imageSelector_searchInput
${column_xpath}    //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[3]/div/div/div[1]
${first_table_locator}  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[1]/div/div/div[1]
${second_table_locator} //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[2]/div/div/div[1]
${first_column}     id:first_column
${second_column}    id:second_column
${join_type}    I

*** Test Cases ***
JoinTable
    Login To Page And Open Workspace
    Click Table Menu
    Click Table Toolkit
    Select Tool     ${join}
    Type Name   ${name}

#    press keys  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[1]/div[2]/div/div/div[1]  TAB

#    Select Join Type   ${join_type}
#    Select Column  zone
#    Click Submit Button

*** Keywords ***
Select First Table
    [Arguments]  ${table}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[1]/div/div/div[1]
    click element  id:Select first table table_1

Select Second Table
    [Arguments]  ${table}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div[2]/div/div/div[1]
    click element  id:Select second table table_2

Select Join Type
    [Arguments]  ${type}
    press keys  None    ${type}

Select Column
    [Arguments]     ${column_nth}  ${column}
    press keys  ${column_xpath}  TAB
    input text  ${column_nth}     ${column}\n



