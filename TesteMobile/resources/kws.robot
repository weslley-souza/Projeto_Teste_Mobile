*** Settings ***
Library    AppiumLibrary


*** Variables ***
${MENU}     //android.widget.ImageButton[@content-desc="Open navigation drawer"]

*** Keywords ***

Botao começar
    Wait Until Page Contains         COMEÇAR
    Click Text                       COMEÇAR


Ir para menu
    Wait Until Element Is Visible    ${MENU} 

    Click Element                    ${MENU}     
    Wait Until Page Contains         Training Wheels


Ir para login    
   Ir para menu
   Click Text                  FORMS
   Wait Until Page Contains    LOGIN 

   Click Text                  LOGIN
   Text Should Be Visible      Fala QA, vamos testar o login?

Ir para cadastro   
   Ir para menu
   Click Text                  FORMS
   Wait Until Page Contains    CADASTRO 

   Click Text                  CADASTRO
   Wait Until Page Contains    Bem-vindo, crie sua conta.

Ir para CheckBox
    Ir para menu
    Click Text                  INPUTS
    Wait Until Page Contains    CHECKBOX

    Click Text                  CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium


Ir para botões de radio
    Ir para menu
    Click Text                  INPUT
    Wait Until Page Contains    INPUT

    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida


Ir para Botão
    [Arguments]    ${click}    ${checkpoint}    ${click2}    ${checkpoint2}
    Ir para menu
    Click Text                 ${click}
    Wait Until Page Contains   ${checkpoint}

    Click Text                 ${click2}
    Wait Until Page Contains   ${checkpoint2}

Ir para Lista
    Ir para menu
    Click Text                  AVENGERS
    Wait Until Page Contains    LISTA
    Click Text                  LISTA

Selecionar heroi
    [Arguments]  ${checarText1}    ${ClicarText}    ${ChecarText2}
    Wait Until Page Contains   ${ChecarText1}
    Click Text                 ${ClicarText} 
    Wait Until Page Contains   ${ChecarText2}