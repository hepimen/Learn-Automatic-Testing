*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}              http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and Lists
        open browser                        ${url}              ${browser}

        # Selecting by label, index, value
        select from list by label           continents          Australia
        sleep                               3
        select from list by index           continents          6
        sleep                               2
        # in example url option without value, so select from list by value cant use
        #     " select from list by value "

        #list box
        select from list by label            selenium_commands      Switch Commands
        sleep                                2
        select from list by label            selenium_commands      Navigation Commands
        sleep                                2
        unselect from list by label          selenium_commands      Switch Commands
        sleep                                2

        close browser

*** Keywords ***
