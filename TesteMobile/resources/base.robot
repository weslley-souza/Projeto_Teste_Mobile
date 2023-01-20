*** Settings ***
Library    AppiumLibrary
Resource    kws.robot


*** Keywords ***
Open Session
  Set Appium Timeout  20
  Open Application    http://localhost:4723/wd/hub
  ...                 appium:automationName=UiAutomator2
  ...                 platformName=Android
  ...                 appium:deviceName=Emulator
  ...                 appium:app=${EXECDIR}/app/twp.apk
  ...                 appium:udid=emulator-5554

  Botao começar

Close Session
    Close Application
  