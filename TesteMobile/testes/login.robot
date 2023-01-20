*** Settings ***
Resource         ../resources/base.robot
Resource         ../resources/kws.robot
    
Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
${ID_EMAIL}       io.qaninja.android.twp:id/etEmail
${ID_PASSWORD}    io.qaninja.android.twp:id/etPassword
${ID_SUBMIT}      io.qaninja.android.twp:id/btnSubmit 


*** Test Cases ***
Deve fazer login com sucesso
   [Tags]    login_sucesso
   Ir para login                                            
   Input Text                  ${ID_EMAIL}       eu@papito.io   
   Input Password              ${ID_PASSWORD}    qaninja

   Click Element               ${ID_SUBMIT}  
   Wait Until Page Contains    Show! Suas credencias são validas.

Mensagem de erro ao fazer login com campo "Email" em branco
   [Tags]    email
   Ir para login                                              
   Input Password              ${ID_PASSWORD}    qaninja

   Click Element               ${ID_SUBMIT}  
   Wait Until Page Contains    Por favor, informe um email bom!

Mensagem de erro ao fazer login com campo "Senha" em branco
   [Tags]    senha
   Ir para login                                            
   Input Text                  ${ID_EMAIL}       eu@papito.io   

   Click Element               ${ID_SUBMIT}  
   Wait Until Page Contains    Oops! Senha em branco!