*** Settings ***
Library             SeleniumLibrary
Library         SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}              https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}      ${browser}
    Maximize Browser Window
    sleep           4
    loginToApplication
    Close Browser



*** Keywords ***
loginToApplication
    click link      xpath://a[contains(text(),'Log in')]
    input text      //input[@id='Email']                testinghbb1@yahoo.com
    input text      //input[@id='Password']             welcome1
    click element   xpath://button[contains(text(),'Log in')]