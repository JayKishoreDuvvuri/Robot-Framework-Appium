*** Settings ***
Documentation                         Screen Objects for Reminders List Screen

*** Variables ***
${LISTS_LABEL}                        xpath=(//*[@label='Lists'])[1]
${REMINDERS_SCREEN_TITLE}             xpath=//*[@label='Reminders']
${RADIO_BUTTON}                       xpath=(//XCUIElementTypeButton[@name="CompleteOff"])[1]
${TEST_TITLE}                         xpath=//*[contains(@value,'TEST_')]
${TEST_NOTES}                         name=This is for Test Demo
${EMPTY_LIST}                         name=Empty list
${NO_REMINDERS_LABEL}                 name=No Reminders

