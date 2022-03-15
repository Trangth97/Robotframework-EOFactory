*** Settings ***
Library  Selenium2Library
Variables  ./Unsupervised_Locators.py

*** Variables ***
${notification_success}  id:success_notification
${SUCCESS_NOTIFICATION}  Successful

*** Keywords ***
Click Map Menu
    wait until element is visible  ${map_menu}    10
    click element  ${map_menu}

Click Tools Toolbar
    wait until element is visible  ${toolbar_button}     5
    click button  ${toolbar_button}

Select Unsupervised Toolkit
    click element   ${toolkit_typeSelector}
    click element   ${unsupervised}

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
    click element   //*[@id="unsupervisedtools_${type}_image"]/div/div/div[1]
    input text  id:unsupervisedtools_${type}_image_imageSelector_searchInput   ${image_name}
    click element  id:${image_name}

Click Submit Button
    click button  ${confirm_button}

Check Success Notification
    wait until element is visible  ${notification_success}
    ${notification}     get text  ${notification_success}
    should contain  ${notification}     ${SUCCESS_NOTIFICATION}









