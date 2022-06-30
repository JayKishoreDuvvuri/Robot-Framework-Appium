*** Settings ***
Documentation         Landing Screen Functionality
Library               AppiumLibrary
Library               String
Resource              ../ScreenObjects/LandingScreen.robot

*** Keywords ***
LandingScreen.ElementsVisible
    Wait Until Element Is Visible             ${MY_LISTS_TITLE}
    Wait Until Element Is Visible             ${REMINDERS_LABEL}
    Wait Until Element Is Visible             ${NEW_REMINDER_LABEL}
    Wait Until Element Is Visible             ${ADD_LIST_LABEL}

LandingScreen.ClickOnNewReminderIcon
    Wait Until Element Is Visible             ${NEW_REMINDER_LABEL}
    Click Element                             ${NEW_REMINDER_LABEL}

LandingScreen.VerifyReminderCount
    [Arguments]                               ${REMINDER_COUNT}
    Wait Until Element Is Visible             ${MY_LISTS_TITLE}
    Wait Until Element Is Visible             ${REMINDER_COUNT}

LandingScreen.TapOnReminder
    Wait Until Element Is Visible             ${REMINDERS_LABEL}
    Click Element                             ${REMINDERS_LABEL}
