*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://www.google.com/
${url_2}        https://www.bing.com/

*** Test Cases ***
Handling Multiple Browsers
    open browser            ${url}          ${browser}
    maximize browser window
    sleep                   3


    open browser            ${url_2}          ${browser}
    maximize browser window
    sleep                   3

    switch browser          1
    ${title_1}=             get title
    log to console          ${title_1}

    switch browser          2
    ${title_2}=             get title
    log to console          ${title_2}

    sleep                   3

    close all browsers

*** Keywords ***
