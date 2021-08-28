*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${browser}              chrome
${url}                  https://www.bpjsketenagakerjaan.go.id/
${close_modal_utama}    //*[@id="mypopup"]/div/button/span


#utama : //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#pop up pendaftaran : //body/div[@id='homepage']/div[@id='pendaftaran']/div[1]/div[1]/div[1]/button[1]/span[1]


*** Test Cases ***
Website Test
    open browser                ${url}              ${browser}
    maximize browser window
#    sleep                       3
    click element               ${close_modal_utama}

#    lapakasik
#    click element           //body/div[@id='homepage']/div[@id='shortcut']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
#    sleep                   3
#    go back

##    tracking klaim
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //body/div[@id='homepage']/div[@id='shortcut']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]
#    sleep                   3
#    go back
#
##    cek saldo jht
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //body/div[@id='homepage']/div[@id='shortcut']/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]
#    sleep                   3
#    go back

#   Pendaftaran Peserta
#    click element                       //body/div[@id='homepage']/div[@id='shortcut']/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]
#    wait until page contains element    //*[@id="pendaftaranModalLabel"]
#    click element                       //*[@id="pendaftaran"]/div/div/div[1]/button/span
#    sleep                   3


    ##    RS/ PLKK
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //*[@id="shortcut"]/div/div/div/div[2]/div[1]/div
#    sleep                   3
#    go back


    ##    SIPP / Pelaporan Data Perusahaan
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //*[@id="shortcut"]/div/div/div/div[2]/div[2]/div
#    sleep                   3
#    go back


    ##    Pembayaran Iuran / Mudah Bayar
#    click element                       //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
    click element                       //body/div[@id='homepage']/div[@id='shortcut']/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]
    wait until page contains element    //h3[@id='pembayaranIuranModalLabel']
    input text                          //input[@id='inputKodeIuran']               1234123412341234
    sleep                               3

    ##    SIPP / Pelaporan Data Perusahaan
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //*[@id="shortcut"]/div/div/div/div[2]/div[2]/div
#    sleep                   3
#    go back

    ##    BSU
#    click element           //body/div[@id='homepage']/div[@id='mypopup']/div[1]/button[1]/span[1]
#    click element           //*[@id="shortcut"]/div/div/div/div[2]/div[4]/div
#    sleep                   3
#    go back

    close browser


*** Keywords ***

