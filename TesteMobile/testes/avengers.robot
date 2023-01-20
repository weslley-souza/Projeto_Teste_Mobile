*** Settings ***
Resource         ../resources/base.robot
Resource         ../resources/kws.robot
    
Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
${CAPITAO}        Capitão América
${THOR}           Thor
${HOMEM_FERRO}    Homem de Ferro
${HULK}           Hulk
${ARANHA}         Homem Aranha      

*** Test Cases ***

Verificar se existe o heroi "Capitão América"
    Ir para Lista
    Selecionar heroi            ${CAPITAO}
    ...                         ${CAPITAO}
    ...                         Humano geneticamente modificado com soro do super soldado.  


Verificar se existe o heroi "Thor"
    Ir para Lista  
    Selecionar heroi    ${THOR}
    ...                 ${THOR}
    ...                 Deus do Trovão, príncipe herdeiro de Asgard.



Verificar se existe o heroi "Homem de Ferro"
    Ir para Lista  
    Selecionar heroi    ${HOMEM_FERRO}
    ...                 ${HOMEM_FERRO}
    ...                 Vingador Dourado. Gênio, bilionário, playboy, filantropo.



Verificar se existe o heroi "Hulk"
    Ir para Lista  
    Selecionar heroi    ${HULK}
    ...                 ${HULK}
    ...                 Físico nuclear especializado em partículas e raios gama.


Verificar se existe o heroi "Homem Aranha"
    Ir para Lista  
    Selecionar heroi    ${ARANHA}
    ...                 ${ARANHA}
    ...                 Inventor, Fotógrafo, Vigilante e amigo da vizinhança.   