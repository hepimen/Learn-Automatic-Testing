*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Handling Tabbed Windows
    open browser            ${url}          ${browser}
    maximize browser window
    click element           //*[@id="Tabbed"]/a/button
    select window           title=Selenium
    click element           //*[@id="main_navbar"]/ul/li[3]/a
    sleep                   3


    close all browsers

*** Keywords ***
