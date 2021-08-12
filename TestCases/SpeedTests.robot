*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}          chrome
${url}              https://itera-qa.azurewebsites.net/home/automation


*** Test Cases ***
register
        ${speed}=           get selenium speed
        log to console      ${speed}
        open browser        ${url}              ${browser}
        maximize browser window
        set selenium speed  2seconds
        input text          //input[@id='name']             John
        input text          //input[@id='phone']            081212341234
        input text          //input[@id='email']            john@gmail.com
        input text          //input[@id='password']         welcome1
        input text          //textarea[@id='address']       No body Perfect
        log to console      ${speed}
        close browser


*** Keywords ***
