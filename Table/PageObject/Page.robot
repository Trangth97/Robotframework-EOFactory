*** Settings ***
Library  Selenium2Library
Variables  ./Table/PageObject/Locators.py

*** Keywords ***
Click Table Menu
    wait until element is visible  ${table_menu}    10
    click element  ${table_menu}

Click Table Toolkit
    wait until element is visible  ${table_toolkit_icon}     5
    click element  ${table_toolkit_icon}

Select Tool
    [Arguments]     ${type}
    wait until element is visible   ${type_selector}    5
    click element   ${type_selector}
    sleep  1
    click element  ${type}

Type Name
    [Arguments]     ${result_name}
    input text      ${name_of_result}   ${result_name}

Select Image
    [Arguments]      ${type}    ${image_name}
    click element   //*[@id="tabletools_${type}_image"]/div/div/div[1]
    input text  tabletools_${type}_image_imageSelector_searchInput   ${image_name}
    click element  id:${image_name}

Click Submit Button
    click button  ${confirm_button}




