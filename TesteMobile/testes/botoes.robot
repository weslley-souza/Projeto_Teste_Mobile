*** Settings ***
Resource         ../resources/base.robot
Resource         ../resources/kws.robot
    
Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
@{ID_BOTAO}    io.qaninja.android.twp:id/short_click
...            io.qaninja.android.twp:id/long_click


*** Test Cases ***
Clique simples
    [Tags]    longo

    Ir para Botão    BOTÕES    BOTÕES    CLIQUE SIMPLES    Botão clique simples

    Click Element              ${ID_BOTAO[0]}
    Wait Until Page Contains   Isso é um clique simples



Clique longo
    [Tags]    longo
    
    Ir para Botão    BOTÕES    BOTÕES    CLIQUE LONGO    Botão clique longo 

    Long Press                 ${ID_BOTAO[1]}    1
    Wait Until Page Contains   CLIQUE LONGO OK