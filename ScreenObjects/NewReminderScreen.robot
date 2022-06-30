*** Settings ***
Documentation                         Screen Objects for New Reminder Screen

*** Variables ***
${NEW_REMINDER_BUTTON}                xpath=(//*[@label='New Reminder'])[1]
${NEW_REMINDER_SCREEN_TITLE}          xpath=//XCUIElementTypeNavigationBar[@name="New Reminder"]
${TITLE_TEXT_INPUT}                   name=Quick Entry Title Field
${NOTES_TEXT_INPUT}                   name=Quick Entry Note Field
${ADD_BUTTON}                         xpath=//XCUIElementTypeButton[@name="Add"]
${DETAILS_SECTION}                    xpath=//XCUIElementTypeStaticText[@name="Details"]
${LIST_SECTION}                       xpath=//XCUIElementTypeCell[@name="List, Reminders, Blue"]



