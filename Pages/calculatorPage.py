class CalculatorData:
    INPUT_LOCATOR = 'name:q'
    DROPDOWN_SELECTOR = 'css: select'
    SELECTOR_BUILD = '# selectBuild'
    DROPDOWNOPERATION = 'id: selectOperationDropdown'
    IMPUTTEXT = 'Basic Calculator'
    VALUE_TO_SELECT = 0
    VALUE_TO_ADD = 0
    VALUE_TO_SUBTRACT = 1
    VALUE_TO_MULTIPLI = 2
    VALUE_TO_DIVIDE = 3
    VALUE_TO_CONCAT = 4
    VALUE_NUMBER1 = 'name: number1'
    VALUE_NUMBER2 = 'name: number2'
    CALCULATE_BT = 'id: calculateButton'
    CLEAR_BT = 'id: clearButton'
    BUILDTEXT = "// label[text() = 'Build']"

class CalculatorNumbers:
    INSER1 = 2
    INSER2 = 3
    EXPECTEDADD = 5
    EXPECTEDSUBTRACT = - 1.0
    EXPECTEDMULTI = 6
    EXPECTEDDIV = 0.666667
    VALUE_ANSWER = 'name: numberAnswer'
    INSERT1STR = str(INSER1)
    INSERT2STR = str(INSER2)
