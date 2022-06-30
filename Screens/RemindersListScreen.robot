*** Settings ***
Documentation         New Reminder Screen Functionality
Library               AppiumLibrary
Resource              ../ScreenObjects/RemindersListScreen.robot

*** Keywords ***
RemindersListScreen.ElementsVisible
    Wait Until Element Is Visible           ${REMINDERS_SCREEN_TITLE}
    Wait Until Element Is Visible           ${RADIO_BUTTON}
    Wait Until Element Is Visible           ${TEST_TITLE}
    Wait Until Element Is Visible           ${TEST_NOTES}

RemindersListScreen.SelectTheItemFromTheList
    Wait Until Element Is Visible           ${RADIO_BUTTON}
    Click Element                           ${RADIO_BUTTON}

RemindersListScreen.VerifyListIsEmpty
    Wait Until Element Is Visible           ${EMPTY_LIST}
    Wait Until Element Is Visible           ${NO_REMINDERS_LABEL}

RemindersListScreen.TapOnListsLabel
    Wait Until Page Contains Element        ${LISTS_LABEL}
    Wait Until Element Is Visible           ${LISTS_LABEL}
    Click Element                           ${LISTS_LABEL}