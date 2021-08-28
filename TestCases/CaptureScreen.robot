*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
Capture Screen Test
    open browser            ${url}              ${browser}
    maximize browser window
    input text              id:txtUsername      Admin
    input text              id:txtPassword      admin123

#    Terbentuk di path sesuai yg kita buat
#    capture element screenshot                  //*[@id="divLogo"]/img          D:/Github/Python/robot-framework/Learn-1/resultScreenshoot/Cap-ELement-1.png
#    capture page screenshot                     D:/Github/Python/robot-framework/Learn-1/resultScreenshoot/Cap-Page-1.png


#    Terbentuk di path luar
    capture element screenshot                  //*[@id="divLogo"]/img          Cap-ELement-1.png
    capture page screenshot                     Cap-Page-1.png





    close browser

*** Keywords ***
