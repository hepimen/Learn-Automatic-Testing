*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}          chrome
${url}              https://itera-qa.azurewebsites.net/home/automation


*** Test Cases ***
register
        open browser        ${url}              ${browser}
        maximize browser window
        ${time}=            get selenium timeout
        log to console      your speed ${time}

        set selenium timeout                    10seconds
        wait until page contains                Test automation practice form
        input text          //input[@id='name']             John
        input text          //input[@id='phone']            081212341234
        input text          //input[@id='email']            john@gmail.com
        input text          //input[@id='password']         welcome1
        input text          //textarea[@id='address']       No body Perfect
        close browser


*** Keywords ***
