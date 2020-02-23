**** Variables ****
${TIMEOUT}    15s

**** Settings ****
Library    Dialogs
Suite Setup    Generate Random Number

**** Tasks ****
Introduction
    Show Intro
Guess Numbers
    [Teardown]    Show Result
    Wait Until Keyword Succeeds    ${TIMEOUT}    0s    Guess Single Number


**** Keywords ****
Generate Random Number
    ${random} =    Evaluate    random.randint(0, 100)    modules=random
    Set Suite Variable    ${target}    ${random}
    Set Suite Variable    ${last}    ${None}

Show Intro
    Pause Execution    message=Try to guess the correct number between 0 and 100.\nAfter each guess it will show if your guess was too high or too low.\nYou have ${TIMEOUT} to guess the correct number.

Guess Single Number
    Read Guess
    Should be Equal As Numbers    ${last}    ${target}

Read Guess
    ${message} =    Run Keyword If    $last is None
    ...    Set Variable    ${Empty}
    ...    ELSE IF    $last < $target    Set Variable    Guess was too low.
    ...    ELSE IF    $last > $target    Set Variable    Guess was too high.

    ${guess} =    Get Value From User    ${message}\nEnter a new value between 0 and 100.
    ${guess} =    Convert To Number    ${guess}
    Set Suite Variable    ${last}    ${guess}

Show Result
    Run Keyword If Test Passed    Show Success Message
    Run Keyword If Test Failed    Show Fail Message

Show Success Message
    Pause Execution    message=Congratulations! You guessed the correct number ${target}.

Show Fail Message
    Pause Execution    message=The correct number was ${target}.
