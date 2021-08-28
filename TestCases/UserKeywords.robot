*** Settings ***
Library          SeleniumLibrary
Resource        ../Resources/resources.robot

*** Variables ***
${browser}              chrome
${url}                  http://demo.guru99.com/test/newtours/

*** Test Cases ***
TC1
    ${PageTitle}=           launchBrowser           ${url}              ${browser}
    log to console          ${PageTitle}
    log                     ${pageTitle}
    input text              //tbody/tr[2]/td[2]/input[1]    mercury
    input text              //tbody/tr[3]/td[2]/input[1]    mercury
    sleep                   3
    close browser



# How to using Keywords, Arguments, Return and Resources (Resources[tab]file resources)
