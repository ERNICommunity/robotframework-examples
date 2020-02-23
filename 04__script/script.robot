*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Value of pi
    ${output} =    Run     ./demo.sh pi
    Should be equal    ${output}    3.1415

Value of tau
    ${output} =    Run     ./demo.sh tau
    Should be equal    ${output}    6.28318

Value of phi
    ${output} =    Run     ./demo.sh phi
    Should be equal    ${output}    1.618

New file
    [Setup]    Remove File    test.txt
    Create File     test.txt    content="Hi"
    File Should Exist    test.txt

