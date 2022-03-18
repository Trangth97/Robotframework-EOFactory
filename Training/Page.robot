*** Settings ***
Library  Selenium2Library
Variables  ./Locators.py

*** Keywords ***
Go to Training
#    click element  ${map_menu}
    wait until element is visible  ${training_btn}
    click button  ${training_btn}

Type Training input
    [Arguments]     ${name}     ${type}
    input text  ${model_name}   ${name}
    press keys  ${training_type}   ${type}\n
    click button  ${continue_training_input}

Select Image
    [Arguments]  ${image}
    sleep  0.5
    click element  ${image_selector}
    wait until element is visible  ${search}
    input text  ${search}   ${image}
    click element  id:${image}
    click button  ${continue_select_image}

Select Destination Folder
    wait until element is visible  ${continue_select_folder}
    click button  ${continue_select_folder}

Training Dataset
    [Arguments]     ${area_layer}   ${class_layer}
#    area
    sleep  1
    click button  //*[@id="training_area"]/div/div/div/div[1]/div/div/button
    click element  //*[@id="app"]/div[7]/div/div/div[2]/div[2]/div/div/div/div[3]/div/div
    press keys  ${aoi_list}     ${area_layer}\n
    click button  ${create_area_layer_btn}

#object
    click button  //*[@id="training_class_1"]/div/div/div/div[1]/div/div/button
    click element  //*[@id="app"]/div[10]/div/div/div[2]/div[2]/div/div/div/div[3]/div/div
    press keys  ${aoi_list}     ${class_layer}\n
    click button  ${create_area_layer_btn}











Run Training
    click button  ${run_btn}