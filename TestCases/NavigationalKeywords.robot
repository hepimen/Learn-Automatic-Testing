*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://www.google.com/
${url_2}        https://www.bing.com/

*** Test Cases ***
Navigation Test
    open browser            ${url}          ${browser}
    ${loc}=                 get location
    log to console          sign to ${loc}
    sleep                   3

    go to                   ${url_2}
    ${loc}=                 get location
    log to console          sign to ${loc}
    sleep                   3

    go back
    ${loc}=                 get location
    log to console          back to ${loc}
    sleep                   3


    close browser

*** Keywords ***
