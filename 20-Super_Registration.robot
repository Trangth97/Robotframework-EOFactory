*** Settings ***
Documentation  Test Super Registration tool.
Resource  ./Login.robot
Resource    ./Imagery/PageObject/Page.robot
Test Teardown  Close Browser

*** Variables ***
${name}     super_registration_result
${image}    ortho_image
${ref_image}    ortho_image_reference

*** Test Cases ***
SuperRegistration
    Login To Page And Open Workspace
    Click Imagery Menu
    Click Imagery Toolkit
    press keys  ${type_selector}    super registration
    Select Tool     ${super_registration}
    Type Name   ${name}
    Select Reference Image  super_registration  ${ref_image}
    Select Image  super_registration  ${image}
    Click Submit Button
    Confirm Pay Cost
    Check Success Notification

*** Keywords ***


