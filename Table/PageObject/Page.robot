*** Settings ***
Library  Selenium2Library
Variables  ./Table_Locators.py

*** Variables ***
${SUCCESS_NOTIFICATION}  Successful

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
    input text  id:tabletools_${type}_image_imageSelector_searchInput   ${image_name}
    click element  id:${image_name}

Select Vector
    [Arguments]  ${vector}
    click element  id:tableTool_vectorSelector
    click element  id:${vector}
    sleep  1

Select Property
    [Arguments]     ${prop}=None
    click element  ${property_selection}
#    select property
    click element  ${close_btn}

Click Submit Button
    click button  ${confirm_button}

Confirm Pay Cost
    wait until element is visible  ${pay_cost_button}
    click button  ${pay_cost_button}

Check Success Notification
    wait until element is visible  ${notification_success}
    ${notification}     get text  ${notification_success}
    sleep  0.5
    should contain  ${notification}     ${SUCCESS_NOTIFICATION}




