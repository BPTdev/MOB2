import SwiftUI
import Combine

class OperationViewModel: ObservableObject {
    // Utilisez @Published pour que les changements soient observés par la View
    @Published var displayText: String = "0"
    private var firstText: String = ""
    private var currentOperation: String = ""
    
    // Ajoutez ici d'autres propriétés et méthodes nécessaires pour la logique de calcul
    
    func receiveInput(_ input: String) {
        if (displayText == "0"){displayText=""}
        switch input {
        case "AC":
            displayText = "0"
            firstText = ""
            currentOperation = ""
        case "=":
            displayText = evaluateExpression()
        case "+":
            processOperation(input:input)
            break
        case "-":
            processOperation(input:input)
            break
        case "X":
            processOperation(input:input)
            break
        case "/":
            processOperation(input:input)
            break
        case "%":
            processOperation(input:input)
            break
        case "+/-":
            processOperation(input:input)
            break
        case "0":
            if(displayText=="")
            {
                displayText = "0"
            }else {
                displayText += "0"
            }
            print(displayText)
            break
        case "1":
            displayText += "1"
            break
        case "2":
            displayText += "2"
            break
        case "3":
            displayText += "3"
            break
        case "4":
            displayText += "4"
            break
        case "5":
            displayText += "5"
            break
        case "6":
            displayText += "6"
            break
        case "7":
            displayText += "7"
            break
        case "8":
            displayText += "8"
            break
        case "9":
            displayText += "9"
            break
        case ".":
            displayText += "."
            break
        default:
            if displayText == "0" || displayText.last == "=" {
                displayText = input
            } else {
                displayText += input
            }
        }
    }
    
    private func evaluateExpression()->String {
        let firstNumber:Float = convertTextToFloat(text:firstText)
        let secondNumber:Float = convertTextToFloat(text:displayText)
        var result:Float = 0
        switch currentOperation{
            case "+":
                result = firstNumber + secondNumber
                break
            case "-":
                result = firstNumber - secondNumber
                break
        case "X":
            result = firstNumber * secondNumber
            break
        case "/":
            result = firstNumber / secondNumber
            break
            case "%":
                result = firstNumber/100
                break
            case "+/-":
                result = firstNumber * (-1)
                break
            default:
                print("Error")
        }
        
        return String(result)
    }
    public func getCurrentNumber()->String
    {
        return displayText
    }
    
    private func storefirstText()-> String
    {
        if (self.firstText == ""){
            self.firstText = self.displayText
        }
        return "0"
    }
    
    private func processOperation(input:String)-> Void
    {
        //To prevent erase of the last number, it's set only if it's set
        displayText = storefirstText()
        currentOperation = input
    }
    
    private func convertTextToFloat(text:String)->Float
    {
        if let floatValue = Float(text) {
            return floatValue
        } else {
            print("Invalid float format for firstText:", firstText)
            return 0
        }

    }
}

