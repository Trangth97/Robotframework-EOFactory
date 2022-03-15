*** Settings ***
Library  Selenium2Library
Variables  ./Vector_Locators.py

*** Variables ***
${notification_success}  id:success_notification
${SUCCESS_NOTIFICATION}  Successful

*** Keywords ***
Click Vector Menu
    wait until element is visible  ${vector_menu}    10
    click element  ${vector_menu}

Click Vector Toolkit
    wait until element is visible  ${vector_toolkit_icon}     5
    click element  ${vector_toolkit_icon}

Select Tool
    [Arguments]     ${type}
    wait until element is visible   ${type_selector}    5
    click element   ${type_selector}
    sleep  1
    click element  ${type}

Type Name
    [Arguments]     ${result_name}
    input text      ${name_of_result}   ${result_name}

Select Vector
    [Arguments]     ${type}    ${search_id}    ${vector_name}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div/div/div[1]/div/div/div
    input text      ${search_id}      ${vector_name}
    click element  id:vectortools_${type}_vector_select2_resultList_item_0

Select Feature
    [Arguments]   ${type}  ${type_input}   ${feature_name}
    click element  //*[@id="vectortools_${type}_${type_input}"]/div/div/div
    input text  id:vectortools_${type}_${type_input}_select2_searchInput     ${feature_name}
    click element  id:vectortools_${type}_${type_input}_select2_resultList_item_0

Select Join Attributes
    [Arguments]     ${type}
    click element  //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/form/div[4]/div[3]/div/div/div[1]
    press keys  None    ${type}\n

Click Submit Button
    click button  ${confirm_button}

Check Success Notification
    wait until element is visible  ${notification_success}
    ${notification}     get text  ${notification_success}
    should contain  ${notification}     ${SUCCESS_NOTIFICATION}









