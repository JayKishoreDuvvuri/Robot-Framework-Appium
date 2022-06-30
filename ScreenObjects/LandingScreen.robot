*** Settings ***
Documentation                         Screen Objects for Landing Screen

*** Variables ***
${MY_LISTS_TITLE}                      xpath=//*[@label='My Lists']
${REMINDERS_LABEL}                     xpath=//*[@label='Reminders']
${NEW_REMINDER_LABEL}                  xpath=(//*[@label='New Reminder'])[1]
${ADD_LIST_LABEL}                      Add List
${REMINDER_COUNT_AS_ONE}               xpath=//XCUIElementTypeStaticText[@name="1"]
${REMINDER_COUNT_AS_ZERO}              xpath=//XCUIElementTypeStaticText[@name="0"]