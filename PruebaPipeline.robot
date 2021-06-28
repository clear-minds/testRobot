*** Settings ***
Documentation  Esta es una prueba para la aplicacion online
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Usuario Abre Pagina 
    [Documentation]  El usuario abre pagina
    [Tags]  Open Landing
    Open Browser  https://angulartestcmc.azurewebsites.net/ gc
    Wait Until Page Contains  Resources
    Close Browser

Usuario Abre Pagina y Da Clic
    [Documentation]  El usuario abre pagina y luego da clic en boton
    [Tags]  Test Landing
    Open Browser  https://angulartestcmc.azurewebsites.net/  gc
    Wait Until Page Contains  Resources
    Click Button   xpath://html/body/app-root/div[2]/div[2]/a[1]
    Sleep  5s
    Close Browser
*** Keywords ***