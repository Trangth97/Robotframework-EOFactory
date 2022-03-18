*** Settings ***
Documentation  Test Cloud free mosaic tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     cloud_free_mosaic_result
${image_1}   mosaic_1
${image_2}   mosaic_2
${acquired_date}    //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[5]/div/div/div[1]/div/div[1]/div/div
${cloud_per}    //*[@id="areaBound"]/div/div[3]/div/div/div[1]/div[1]/div/form/div[5]/div/div/div[1]/div/div[2]/div/div

*** Test Cases ***
CloudFreeMosaic
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    Select Tool     ${cloud_free_mosaic}
    Type Name   ${name}
    Select Multiple Images  cloudFreeMosaic     ${image_1}  ${image_2}
    Select option   ${cloud_per}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***
Select option
    [Arguments]  ${option}=${acquired_date}
    click element  ${option}

#bảo dũng sửa id: ardtool -> ardtools trong cloud free mosaic
Select Multiple Images
    [Arguments]     ${type}    ${image_1}   ${image_2}
    click element  //*[@id="ardtool_${type}_images"]/div/div/div[1]
    input text  id:ardtool_${type}_images_imageSelector_searchInput   ${image_1}
    click element  id:${image_1}
    input text  id:ardtool_${type}_images_imageSelector_searchInput   ${image_2}
    click element  id:${image_2}



