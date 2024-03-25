*** Settings ***
Library  SeleniumLibrary
Variables    url.py
Variables     Pages/googlePage.py
Variables     Pages/calculatorPage.py

*** Variables ***

${SECONDS}  1S
${3SECONDS}  3S



*** Test Cases ***

Visitar google

    Open Browser    ${TestEnv.GOOGLE_URL}    ${testEnv.BROWSER}
    Maximize Browser Window
    Sleep   ${SECONDS}
    Click Element   ${GoogleData.COOKIE_ACCEPT_BUTTON}
    Sleep   ${SECONDS}
    Input Text    ${GoogleData.INPUT_LOCATOR}    ${TestEnv.URL_CALCULATOR}
    Sleep   ${SECONDS}
    Press Keys    ${GoogleData.INPUT_LOCATOR}    \ue007
    Sleep   ${SECONDS}

Visitar Calculator
    #Check element match
    Page Should Contain    ${CalculatorData.IMPUTTEXT}
    Page Should Contain Element  ${GoogleData.FIRSTRESULTLINK}
    Click Element    ${GoogleData.FIRSTRESULTLINK}
    Sleep   ${SECONDS}
    Mouse Over   ${CalculatorData.BUILDTEXT}
    Sleep   ${SECONDS}
    Click Element    ${CalculatorData.DROPDOWN_SELECTOR}
    Sleep    ${SECONDS}
    Select From List By Value     ${CalculatorData.DROPDOWN_SELECTOR}    ${CalculatorData.VALUE_TO_SELECT}
    Sleep    2s
    Click Element     ${CalculatorData.DROPDOWN_SELECTOR}
    Sleep   ${SECONDS}
Suma Calculator
    Mouse Over   ${CalculatorData.CALCULATE_BT}
    Sleep   ${SECONDS}
    Select From List By Value    ${CalculatorData.DROPDOWNOPERATION}    ${CalculatorData.VALUE_TO_ADD}
    Input Text    ${CalculatorData.VALUE_NUMBER1}    ${CalculatorNumbers.INSER1}
    Input Text    ${CalculatorData.VALUE_NUMBER2}    ${CalculatorNumbers.INSER2}
    Click Button    ${CalculatorData.CALCULATE_BT}
    Sleep   ${3SECONDS}
    ${RESULT}=   Get Value    ${CalculatorNumbers.VALUE_ANSWER}
    Should Be Equal As Numbers    ${RESULT}    ${CalculatorNumbers.EXPECTEDADD}
    Click Button    ${CalculatorData.CLEAR_BT}
    Sleep   ${3SECONDS}
Resta Calculator
    Select From List By Value    ${CalculatorData.DROPDOWNOPERATION}    ${CalculatorData.VALUE_TO_SUBTRACT}
    Input Text    ${CalculatorData.VALUE_NUMBER1}    ${CalculatorNumbers.INSER1}
    Input Text    ${CalculatorData.VALUE_NUMBER2}    ${CalculatorNumbers.INSER2}
    Click Button    ${CalculatorData.CALCULATE_BT}
    Sleep    ${3SECONDS}
    ${RESULT}=   Get Value    ${CalculatorNumbers.VALUE_ANSWER}
    Should Be Equal As Numbers    ${RESULT}    ${CalculatorNumbers.EXPECTEDSUBTRACT}
    Click Button    ${CalculatorData.CLEAR_BT}
    Sleep   ${3SECONDS}
Multiplicación Calculator
    Select From List By Value    ${CalculatorData.DROPDOWNOPERATION}    ${CalculatorData.VALUE_TO_MULTIPLI}
    Input Text    ${CalculatorData.VALUE_NUMBER1}    ${CalculatorNumbers.INSER1}
    Input Text    ${CalculatorData.VALUE_NUMBER2}    ${CalculatorNumbers.INSER2}
    Click Button    ${CalculatorData.CALCULATE_BT}
    Sleep    ${3SECONDS}
    ${RESULT}=   Get Value    ${CalculatorNumbers.VALUE_ANSWER}
    Should Be Equal As Numbers    ${RESULT}    ${CalculatorNumbers.EXPECTEDMULTI}
    Click Button    ${CalculatorData.CLEAR_BT}
    Sleep   ${3SECONDS}
Division Calculator
    Select From List By Value   ${CalculatorData.DROPDOWNOPERATION}    ${CalculatorData.VALUE_TO_DIVIDE}
    Input Text    ${CalculatorData.VALUE_NUMBER1}    ${CalculatorNumbers.INSER1}
    Input Text    ${CalculatorData.VALUE_NUMBER2}    ${CalculatorNumbers.INSER2}
    Click Button    ${CalculatorData.CALCULATE_BT}
    Sleep    ${3SECONDS}
    ${RESULT}=   Get Value    ${CalculatorNumbers.VALUE_ANSWER}
    Should Be Equal As Numbers    ${RESULT}    ${CalculatorNumbers.EXPECTEDDIV}
    Click Button    ${CalculatorData.CLEAR_BT}
    Sleep   ${3SECONDS}
Concat Calculator
    Select From List By Value    ${CalculatorData.DROPDOWNOPERATION}    ${CalculatorData.VALUE_TO_CONCAT}
    Input Text    ${CalculatorData.VALUE_NUMBER1}    ${CalculatorNumbers.INSER1}
    Input Text    ${CalculatorData.VALUE_NUMBER2}    ${CalculatorNumbers.INSER2}
    Click Button    ${CalculatorData.CALCULATE_BT}
    Sleep    ${3SECONDS}
    ${RESULT}=   Get Value    ${CalculatorNumbers.VALUE_ANSWER}
    Should Be Equal As Numbers    ${RESULT}    ${CalculatorNumbers.INSERT1STR}${CalculatorNumbers.INSERT2STR}
    Click Button    ${CalculatorData.CLEAR_BT}
    Sleep   ${3SECONDS}

    [Teardown]    Close Browser
    
#*** Keywords ***
#Visitar google
#    Open Browser    ${LOGIN URL}    ${BROWSER}
#    [Arguments]    ${IMPUTTEXT}
#    Input Text    name:q    ${IMPUTTEXT}
#Suma Calculator
#    Input number1    ${VALUE_NUMBER1}    ${INSER1}
#Visitar Amadeus
