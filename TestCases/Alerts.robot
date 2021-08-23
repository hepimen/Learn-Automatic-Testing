*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          http://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Alerts
    open browser             ${url}          ${browser}
    click element            //button[contains(text(),'Click Me')]
#    handle alert            accept
#    handle alert            dismiss
#    handle alert            leave
    sleep                    3
    alert should be present  Press a button!
#    alert should not be present  Press a button!
    close browser

*** Keywords ***
