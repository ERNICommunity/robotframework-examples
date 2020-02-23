*** Variables ***
${SCREEN}    ${False}
${SPEED}     ${0}

**** Settings ****
Library    turtle
Library    Dialogs
Library    turtle_to_image.py
Test Setup    Reset Screen
Test Teardown    Run Teardown

**** Tasks ****
Rectangle
    Is at start position
    Draw Rectangle     ${200}    ${100}
    Is at start position

Triangle
    Draw Triangle

Star
    Draw Triangle    ${120}

**** Keywords ****
Reset Screen
    Reset
    ${speed_int} =    Convert To Number    ${SPEED}
    Speed    ${speed_int}

Run Teardown
    Run Keyword If    $SCREEN    Log Screen
    ...    ELSE    Screen To Message
    Run Keyword If    $SCREEN    Pause Screen

Pause Screen
    Pause Execution   Pause execution to have a look at the output.

Is at start position
    ${dist} =    distance    ${0}   ${0}
    ${pos} =   position
    Should be True    $dist < 1e-6   msg=Turtle is ${dist} away from start at position ${pos}.

Draw Rectangle
    [Arguments]    ${width}=${100}   ${height}=${100}
    forward    ${width}
    left    ${90}
    forward    ${height}
    left    ${90}
    forward    ${width}
    left    ${90}
    forward    ${height}
    left    ${90}

Draw Triangle
    [Arguments]    ${width}=${100}
    forward     ${width}
    left    ${120}
    forward     ${width}
    left    ${120}
    forward     ${width}
    left    ${120}