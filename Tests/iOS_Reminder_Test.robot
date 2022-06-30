# Scenario : Add a Reminder
# Scenario Description: User logs in to the Reminders app and creates a new reminder
# Test Steps:
            #1.  User navigates to Landing Screen
            #2.  User Taps on "New Reminder" button present at the Left bottom of the screen
            #3.  User checks Details and List sections are visible on New Reminder Screen
            #4.  User Fills in the Title and Notes and clicks on the Add Button
            #5.  User navigates back to the Landing Screen with the Reminder count as 1
            #6.  User taps on the Reminders section and navigates to Reminders Screen
            #7.  User verifes the elements visible on the Reminders Screen
            #8.  User clicks on the selected reminder from the list displayed to complete
            #9.  User verifies whether the Reminder List is Empty
            #10. User clicks on the "< Lists" arrow button present on the top of the screen to navigate baclk to Landing Screen
            #11. User verifes the count of the Reminders as Zero on the Landing Screen

*** Settings ***
Documentation           User logs in to the Reminders app and creates a new reminder
Library                 AppiumLibrary
Library                 ../PyLibs/Utility.py
Resource                ../Resources/TestSetup.robot
Resource                ../Screens/LandingScreen.robot
Resource                ../Screens/NewReminderScreen.robot
Resource                ../Screens/RemindersListScreen.robot
Resource                ../Data/TestData.robot
Resource                ../ScreenObjects/LandingScreen.robot

Test Setup              BeforeTest
Test Teardown           AfterTest

*** Test Cases ***
User Adds a Reminder
     ${TEST_DATA_TITLE_TEXT}   get_random_string   ${STRING_LENGTH}
     Log To Console                                ${TEST_DATA_TITLE_TEXT}
     LandingScreen.ElementsVisible
     LandingScreen.ClickOnNewReminderIcon
     NewReminderScreen.ElementsVisible
     NewReminderScreen.TypeInTitleField             ${TEST_DATA_TITLE_TEXT}
     NewReminderScreen.TypeInNotesField             ${TEST_DATA_NOTES_TEXT}
     NewReminderScreen.ClickOnAddButton
     LandingScreen.VerifyReminderCount              ${REMINDER_COUNT_AS_ONE}
     LandingScreen.TapOnReminder
     RemindersListScreen.ElementsVisible
     RemindersListScreen.SelectTheItemFromTheList
     RemindersListScreen.VerifyListIsEmpty
     RemindersListScreen.TapOnListsLabel
     LandingScreen.VerifyReminderCount              ${REMINDER_COUNT_AS_ZERO}