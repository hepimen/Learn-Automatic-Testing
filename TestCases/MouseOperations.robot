*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${browser}              chrome
${url}                  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}                 http://testautomationpractice.blogspot.com/
${url3}                 http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
Mouse Actions Test
#    Right Click
    open browser            ${url}              ${browser}
    maximize browser window
    open context menu       //span[contains(text(),'right click me')]
    sleep                   3

#    Double Click
    go to                   ${url2}
    maximize browser window
    double click element    //button[contains(text(),'Copy Text')]
    sleep                   3

#    drag and drop
    go to                   ${url3}
    maximize browser window
    drag and drop           //div[@id='box5']           //div[@id='box105']
    sleep                   5

    close browser


*** Keywords ***

