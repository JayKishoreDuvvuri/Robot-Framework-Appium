*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem

*** Keywords ***
Launch App
    [Arguments]  ${APPIUM_PORT}  ${DEVICE_UDID}  ${DEVICE_NAME}  ${PLATFORM_VERSION}
    Open Application    http://localhost:${APPIUM_PORT}/wd/hub
    ...     platformName=iOS
    ...     automationName=XCUITest
    ...     app=com.apple.reminders
    ...     platformVersion=${PLATFORM_VERSION}
    ...     deviceName=${DEVICE_NAME}
    ...     udid=${DEVICE_UDID}

Close App
    Close Application
