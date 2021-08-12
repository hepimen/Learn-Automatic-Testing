*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}          chrome
${url}              https://itera-qa.azurewebsites.net/home/automation


*** Test Cases ***
register
        open browser        ${url}              ${browser}
        maximize browser window

        ${implicitTime}=                                    get selenium implicit wait
        log to console                                      ${implicitTime}

        set selenium implicit wait                          10 seconds

        ${implicitTime}=                                    get selenium implicit wait
        log to console                                      ${implicitTime}

        input text          //input[@id='name1']            John
        input text          //input[@id='phone']            081212341234
        input text          //input[@id='email']            john@gmail.com
        input text          //input[@id='password']         welcome1
        input text          //textarea[@id='address']       No body Perfect
        close browser


*** Keywords ***
