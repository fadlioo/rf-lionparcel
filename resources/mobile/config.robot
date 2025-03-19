*** Settings ***
Documentation  Mobile testing configuration
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=13}
${ANDROID_DEVICE_NAME}        Android Device
${ANDROID_UDID}               RRCW200SSSM
${APPIUM SERVER URL}          http://127.0.0.1:4723
${WAIT_TIME_OUT}              20
${APP_PACKAGE}                com.lionparcel.services.consumer
${APP_ACTIVITY}               com.lionparcel.services.consumer.view.onboarding.OnBoardingActivity

*** Keywords ***
Open Test Application
  Open Application  ${APPIUM SERVER URL}  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  deviceName=${ANDROID_DEVICE_NAME}  udid=${ANDROID_UDID}
  ...  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}
  ...  noReset=true
