*** Settings ***
Library    OperatingSystem
Library    ImageLibrary

*** Test Cases ***
Vision-Based Navigation
    [Documentation]    Test the robot's ability to navigate using vision-based processing.
    Load Navigation Map    ${CURDIR}/maps/map1.png
    Set Robot Starting Position    A
    Move Robot Using Vision To    B
    Verify Robot Position    B