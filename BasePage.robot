*** Settings ***
Library  Selenium2Library
Variables  ./env.py

*** Variables ***
${confim_paycost}     id:notificationTokenDialog_confirmButton
${notification_success}     id:success_notification
${notification_warning}     id:warning_notification

*** Test Cases ***

*** Keywords ***
Confirm Pay Cost
    wait until element is visible  ${confim_paycost}
    click button  ${confim_paycost}
    sleep  2

Check Created Task Success
    [Arguments]  ${notification}    ${task_name}
    wait until element is visible   ${notification_success}
    ${system_notification}  get text    ${notification_success}

#        self.assertIn(notification, system_notification)
#        self.check_task_is_not_error(
#            system_notification.split(':')[0], task_name)