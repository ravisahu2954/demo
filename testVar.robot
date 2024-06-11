*** Settings ***
Library    pythonProg.py
Library    OperatingSystem
# Library    calculator.so


*** Test Cases ***
Example Test Case
    Log    This is a sample test case
    ${sum}=    Evaluate    2 + 3
    Should Be Equal As Numbers    ${sum}    5

Calculate Factorial
    [Documentation]    Calulated Factorial using loop of ....
    ${result}=    factorials    ${10}
    Log    Calulated Factorial using loop of ....
    # Should Be Equal As Numbers    ${result}    120

Calculate Factorial using rec
    [Documentation]     Calculate factorial using recursion.
    ${result}=    factorial    ${11}
    Log    Calulated Factorial using recursion of ....

Calculate Fibonacci
    ${result}=    generate_fibonacci_series   ${32}
    Log    Calulated Fibonacci Numbers of ....
    # Should Be Equal As Numbers    ${result}    120

Test Prime Number
    ${is_prime}=    is_prime    ${11}
    IF  ${is_prime} == $True
        Should Be True    ${is_prime}
        # Log To Console    Given Number is Prime ...
    ELSE
        Should Not Be True    ${is_prime}
        # Log To Console   Given Number is not Prime ....
    END

Calculate Factorial1
    ${result}=    factorials    ${10}
    Log    Calulated Factorial of ....
    # Should Be Equal As Numbers    ${result}    120
    # sleep       1s

Calculate Fibonacci1
    ${result}=    generate_fibonacci_series   ${5}
    Log    Calulated Fibonacci Numbers of ....
    #Should Be Equal As Numbers    ${result}    120

Test Prime Number1
    ${is_prime}=    is_prime   ${7}
    Check Prime   ${is_prime}

*** Keywords ***
Check Prime
    [Arguments]    ${is_prime}
    IF  ${is_prime} == $True
        Should Be True    ${is_prime}
        # Log To Console    Given Number is Prime ...
    ELSE
        Should Not Be True    ${is_prime}
        # Log To Console   Given Number is not Prime ....
    END