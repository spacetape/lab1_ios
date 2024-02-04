import Foundation

func add(_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtract(_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multiply(_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func divide(_ num1: Double, _ num2: Double) -> Double? {
    guard num2 != 0 else {
        print("Error: Division by zero")
        return nil
    }
    return num1 / num2
}

func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

func getUserInput() -> (Double, Double, String)? {
    print("Enter the first number:")
    guard let num1String = readLine(), let num1 = Double(num1String) else {
        print("Invalid input for the first number.")
        return nil
    }

    print("Enter the second number:")
    guard let num2String = readLine(), let num2 = Double(num2String) else {
        print("Invalid input for the second number.")
        return nil
    }

    print("Enter the operator (+, -, *, /, ^):")
    guard let operatorSymbol = readLine(), "+-*/^".contains(operatorSymbol) else {
        print("Invalid operator.")
        return nil
    }

    return (num1, num2, operatorSymbol)
}

func performOperation(_ num1: Double, _ num2: Double, _ operatorSymbol: String) -> Double? {
    switch operatorSymbol {
    case "+":
        return add(num1, num2)
    case "-":
        return subtract(num1, num2)
    case "*":
        return multiply(num1, num2)
    case "/":
        return divide(num1, num2)
    case "^":
        return power(num1, num2)
    default:
        return nil
    }
}

func calculator() {
    // Uncomment the following line for testing
    // let input: (Double, Double, String) = (5.0, 2.0, "+")

    // Comment out the following line for testing
    guard let input = getUserInput() else { return }

    if let result = performOperation(input.0, input.1, input.2) {
        print("Result: \(result)")
    }
}

calculator()
