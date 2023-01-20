*** Settings ***
Resource         ../resources/base.robot
Resource         ../resources/kws.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
${ID_NAME}        io.qaninja.android.twp:id/etUsername
${ID_EMAIL}       io.qaninja.android.twp:id/etEmail
${ID_PASSWORD}    io.qaninja.android.twp:id/etPassword
${ID_SPINNER}     io.qaninja.android.twp:id/spinnerJob 
${ID_SUBMIT}      io.qaninja.android.twp:id/btnSubmit



*** Test Cases ***

Cadastrar um novo usuario "Desenvolvedor"
    [Tags]    dev
    Ir para cadastro
    
    Input Text                  ${ID_NAME}        Weslley
    Input Text                  ${ID_EMAIL}       eu@papito.io   
    Input Password              ${ID_PASSWORD}    qaninja

    Click Element               ${ID_SPINNER}
    Wait Until Page Contains    Desenvolvedor
    Click Text                  Desenvolvedor
    Click Element               ${ID_SUBMIT}


Cadastrar um novo usuario "QA"
    [Tags]    qa
    Ir para cadastro

    Input Text                  ${ID_NAME}        Weslley
    Input Text                  ${ID_EMAIL}       eu@papito.io   
    Input Password              ${ID_PASSWORD}    qaninja

    Click Element               ${ID_SPINNER}
    Wait Until Page Contains    QA
    Click Text                  QA
    Click Element               ${ID_SUBMIT}


Cadastrar um novo usuario "DevOps"
    [Tags]    devops
    Ir para cadastro

    Input Text                  ${ID_NAME}        Weslley
    Input Text                  ${ID_EMAIL}       eu@papito.io   
    Input Password              ${ID_PASSWORD}    qaninja

    Click Element               ${ID_SPINNER}
    Wait Until Page Contains    DevOps
    Click Text                  DevOps
    Click Element               ${ID_SUBMIT}



Cadastrar um novo usuario "UX
    [Tags]    ux
    Ir para cadastro

    Input Text                  ${ID_NAME}        Weslley
    Input Text                  ${ID_EMAIL}       eu@papito.io   
    Input Password              ${ID_PASSWORD}    qaninja

    Click Element               ${ID_SPINNER}
    Wait Until Page Contains    UX
    Click Text                  UX
    Click Element               ${ID_SUBMIT}