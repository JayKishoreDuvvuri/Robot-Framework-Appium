*** Settings ***
Resource    ../Helpers/TestSetupHelper.robot

*** Variables ***
${APPIUM_PORT}         4723
${DEVICE_UDID}         A05B3D2C-B7CE-41A2-BD62-C1F09E35761A
${DEVICE_NAME}         iPhone 12
${PLATFORM_VERSION}    15.5

*** Keywords ***

BeforeTest
    Launch App    ${APPIUM_PORT}  ${DEVICE_UDID}  ${DEVICE_NAME}  ${PLATFORM_VERSION}

AfterTest
    Close App