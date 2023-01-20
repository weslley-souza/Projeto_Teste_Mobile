*** Settings ***
Resource         ../resources/base.robot
Resource         ../resources/kws.robot
    
Test Setup       Open Session
Test Teardown    Close Session



*** Test Cases ***
Checkbox - Selecionar a opção Robot Framework
    Ir para CheckBox
    
    ${id_container}    Set Variable       io.qaninja.android.twp:id/rvContainer
    ${element}         Set Variable       xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                         ${element}
    Wait Until Element Is Visible         ${id_container}
    Element Attribute Should Match        ${element}    checkable    true



Radio - selecionar a opção Javascript
    Ir para botões de radio
    
    ${element}         Set Variable       xpath=//android.widget.RadioButton[contains(@text, 'Javascript')]

    Click Element                    ${element}
    Wait Until Element Is Visible    ${element}
    Element Attribute Should Match   ${element}    checkable    true