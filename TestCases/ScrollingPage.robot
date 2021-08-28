*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${browser}              chrome
${url}                  https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Test
    open browser            ${url}              ${browser}
    maximize browser window
#    execute javascript                         window.scrollTo(0,2500)
#    scroll element into view                    //body[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/table[1]/tbody[1]/tr[85]/td[1]/img[1]
#    sleep                   3
    execute javascript                          window.scrollTo(0,document.body.scrollHeight)  #endofThePage
    sleep                   3
    execute javascript                          window.scrollTo(0,-document.body.scrollHeight)  #StartThePage
    sleep                   3
    close browser


*** Keywords ***

