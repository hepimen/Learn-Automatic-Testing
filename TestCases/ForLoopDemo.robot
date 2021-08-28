*** Test Cases ***
#ForLoop1
#    FOR   ${i}    IN RANGE    1   10
#    log to console  ${i}
#    END


#ForLoop2
#    FOR    ${i}     IN  1 2 3 4 5 6 7 8 9
#    log to console  ${i}
#    END


#ForLopp3WithList
#    @{items}    create list     1  2    3  4  5
#    FOR     ${i}    IN      @{items}
#    log to console          ${i}
#    END

#ForLoop4
#    FOR     ${i}    IN  john    david   smith   scott
#    log to console      ${i}
#    END

#ForLoop5
#    @{nameList}     create list     john    david   smith   scott
#    FOR     ${i}    IN  @{nameList}
#    log to console      ${i}
#    END

ForLoop6WithExit
    @{items}     create list     1  2   3   4   5   6   7   8
    FOR     ${i}    IN  @{items}
    log to console      ${i}
    exit for loop if    ${i}==4
    END