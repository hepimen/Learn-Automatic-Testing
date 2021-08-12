*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}           chrome
${url}               https://itera-qa.azurewebsites.net/home/automation
${url2}              https://www.saucedemo.com/


*** Test Cases ***
My Test Cases
    open browser        ${url}              ${browser}
    maximize browser window

    open browser        ${url2}              ${browser}
    maximize browser window


    close all browsers


*** Keywords ***
