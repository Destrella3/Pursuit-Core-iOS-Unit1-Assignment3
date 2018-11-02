//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


func regularCalculator() {

var firstNum = Double()
var secondNum = Double()
    
if let userInput = readLine()?.components(separatedBy: " ") {
    if let checkFirstNum = Double(userInput[0]) {
        firstNum = checkFirstNum
    } else {
        firstNum = 0.0
        print("Invalid Operation, Try Again!")
        regularCalculator()
    }
    if let checkSecondNum = Double(userInput[2]) {
        secondNum = checkSecondNum
    } else {
        secondNum = 0.0
        print("Invalid Operation, Try Again!")
        regularCalculator()
    }
    let operand = (userInput[1])
    if operand != "+" && operand != "-" && operand != "*" && operand != "/" && operand != "?" {
        print("Invalid Operand, Try Again!")
        regularCalculator()
    }
    let mathOperation = mathStuffFactory(opString: operand)
    let result = mathOperation(firstNum, secondNum)
    print("\(firstNum) \(operand) \(secondNum) = \(result)")
    }
    calcMenu()
}

func guessThatOperand() {
    var firstNum = Double()
    var secondNum = Double()
    if let userInput = readLine()?.components(separatedBy: " ") {
        if let checkFirstNum = Double(userInput[0]) {
            firstNum = checkFirstNum
        } else {
            firstNum = 0.0
            print("Invalid Operation, Try Again!")
            guessThatOperand()
        }
        if let checkSecondNum = Double(userInput[2]) {
            secondNum = checkSecondNum
        } else {
            secondNum = 0.0
            print("Invalid Operation, Try Again!")
            guessThatOperand()
        }
        let operand = (userInput[1])
        if operand != "+" && operand != "-" && operand != "*" && operand != "/" && operand != "?" {
            print("Invalid Operand, Try Again!")
            guessThatOperand()
        }
        let operandList = ["+", "-", "*", "/" ]
    if let generatedOp = operandList.randomElement() {
        let mathOperation = mathStuffFactory(opString: generatedOp)
        let result = mathOperation(firstNum, secondNum)
    print("\(firstNum) ? \(secondNum) = \(result)")
    print("Which operand did the calculator use?")
        let userInput = readLine()
        if userInput == generatedOp {
        print("You got it correct")
            calcMenu()
        } else {
        print("You got it wrong, the operand is \(generatedOp)")
            calcMenu()
        }
    }
}
}

func calcMenu () {
    print("Please Choose a Function. \"1\" for Regular or \"2\" for High Order \"3\" for Math Game.")
    let userInput = readLine()?.lowercased()
    switch userInput{
    case "1":
        print("Please Enter your Operation. e.g 5 + 3, 3 * 7, 8 / 2, 4 - 2")
        regularCalculator()
    case "2":
        print("Please Enter your Operation. e.g Filter 1,2,3,4,5 by > 4, Reduce 1,2,3,4 by + 0, Map 1,2,3,4,5 by ")
    case "3":
        print("Give an Equation with \"?\" as an Operand and gueesed what is used. e.g 5 ? 10 ")
        guessThatOperand()
    default:
        print("invalid input")
        calcMenu()
    }
}
calcMenu()






