*** Settings ***
Library    BuiltIn
#Library    Collections

*** Variables ***
#  ${input_value}    0
#    ${user_name}    "shri"
#    ${password}    root123
#    ${product_id}    55

*** Test Cases ***
Test For loop
   FOR    ${input_value}    IN RANGE    7
	#Log To Console		${input_value}
        Run Keyword If    '${input_value}' == '1'    Keyword For Case 1
        Run Keyword If    '${input_value}' == '2'    Keyword For Case 2
        Run Keyword If    '${input_value}' == '3'    Keyword For Case 3
        Run Keyword If    '${input_value}' == '4'    Keyword For Case 4
        Run Keyword If    '${input_value}' == '5'    Keyword For Case 5
        Log To Console    Current count: ${input_value}
    END
    [Teardown]    Run Keyword If    '${input_value}' not in ['1', '2', '3', '4', '5','6']    Keyword For Default Case

Add Product To Cart
     [Documentation]    Add a product to the cart and verify it's added successfully
     Login    abc	efg
     Navigate To Product Page
     Add Product		${12}
     Verify Product Added To Cart

 Search Product
     [Documentation]    Search for a product and verify search results
     Login    username    password
     Enter Search Query    "Robot Framework"
     Verify Search Results    "Robot Framework"

*** Keywords ***

Keyword For Default Case
    Log To Console    No match found

Keyword For Case 1
    Log    Input value is 1
    # Perform actions for case 1

Keyword For Case 2
    Log    Input value is 2
    # Perform actions for case 2

Keyword For Case 3
    Log    Input value is 3
    # Perform actions for case 3

Keyword For Case 4
    Log    Input value is 4
    # Perform actions for case 4

Keyword For Case 5
    Log    Input value is 5
    # Perform actions for case 5
    
Login
    [Arguments]    ${username}    ${password}
    Log    Logging in with username '${username}' and password '${password}'
    #Sleep    5m
    # Implementation of login steps
    
Navigate To Product Page
    Log    Navigating to the product page
    #Sleep    5m
    # Implementation of navigation steps to product page

Add Product
    [Arguments]    ${product_id}
    Log    Adding product with ID ${product_id} to the cart
    #Sleep    5m
    # Implementation of adding product to cart

Verify Product Added To Cart
    Log    Verifying product is added to the cart
    #Sleep    5m
    # Implementation of verification steps

Enter Search Query
    [Arguments]    ${query}
    Log    Entering search query: '${query}'
    #Sleep    5m
    # Implementation of entering search query

Verify Search Results
    [Arguments]    ${expected_result}
    Log    Verifying search results contain: '${expected_result}'
    #Sleep    5m
    # Implementation of verifying search results



