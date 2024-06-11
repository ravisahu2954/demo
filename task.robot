*** Settings ***
Library    RPA.Tasks

*** Variables ***
${CURRENT}    ${1}
${TARGET}     ${200}

*** Tasks ***
Check loop condition
    Log To Console    I'm trying to count to ${TARGET}
    Set next task if    ${CURRENT} >= ${TARGET}     Target reached    Increment current number

This will not run
    Log To Console    i am here
    Fail    This should never run

Increment current number
    Log To Console    I am here
    Set suite variable    ${CURRENT}    ${CURRENT + 1}
    Log    Number is now ${CURRENT}
    Log To Console    Number is now ${CURRENT}
    Jump to task    Check loop condition

Target reached
    Log To Console    Those are some good numbers!


Target reached1
    Log To Console    Those are some good numbers!

Target reached2
    Log To Console    Those are some good numbersis!

Target reached3
    Log To Console    Those are some good numbers!

Target reached4
    Log To Console    Those are some good numbers!

Target reached5
    Log To Console    Those are some good numbers!

# *** Test Cases ***
#     Log    Those are some good numbers!