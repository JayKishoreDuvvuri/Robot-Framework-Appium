*** Settings ***
Documentation         New Reminder Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/NewReminderScreen.robot

*** Keywords ***
NewReminderScreen.ElementsVisible
    Wait Until Element Is Visible            ${NEW_REMINDER_SCREEN_TITLE}
    Wait Until Element Is Visible            ${DETAILS_SECTION}
    Wait Until Element Is Visible            ${LIST_SECTION}

NewReminderScreen.TypeInTitleField
    [Arguments]                               ${SOME_TITLE_TEXT}
    Wait Until Page Contains Element          ${TITLE_TEXT_INPUT}
    Element Should Be Enabled                 ${TITLE_TEXT_INPUT}
    Input Text                                ${TITLE_TEXT_INPUT}     ${SOME_TITLE_TEXT}


NewReminderScreen.TypeInNotesField
    [Arguments]                               ${SOME_NOTES_TEXT}
    Wait Until Page Contains Element          ${NOTES_TEXT_INPUT}
    Element Should Be Enabled                 ${NOTES_TEXT_INPUT}
    Input Text                                ${NOTES_TEXT_INPUT}     ${SOME_NOTES_TEXT}


NewReminderScreen.ClickOnAddButton
    Wait Until Element Is Visible             ${ADD_BUTTON}
    Click Element                             ${ADD_BUTTON}
