import UIKit

//2.1

let firstNumber : Int = 12

//2.2

let secondNumber : Int = -100

//2.3

let thirdNumber = 128

if let hexThirdNumber = Int(String(thirdNumber, radix: 16)) {
    print(hexThirdNumber)
}

//2.4

let minNumber : Int16 = Int16.min

//2.5

let maxNumber : Int64 = Int64.max

//2.6

var floatNumber : Float = 10235.34

//2.7

let characterA : Character = "a"

//2.8

let phrase : String = "Hello, World!"

//2.9

let trueDefinition : Bool = true

//2.10

var stringTwelveNumber = String(firstNumber)

stringTwelveNumber = "twelve"

let twelveNumber = (number: 12, string: "Twelve")

//3.0

var mainPhrase = "Hello World. This is Swift programming language"

//3.1

print(mainPhrase.count)

//3.2

mainPhrase = mainPhrase.replacingOccurrences(of: "i", with: "u")

print(mainPhrase)

//3.3

mainPhrase.remove(at: mainPhrase.index(mainPhrase.startIndex, offsetBy: 3))

mainPhrase.remove(at: mainPhrase.index(mainPhrase.startIndex, offsetBy: 6))

mainPhrase.remove(at: mainPhrase.index(mainPhrase.startIndex, offsetBy: 9))

//3.4

mainPhrase += " (modified)"

//3.5

print(mainPhrase.isEmpty)

//3.6

mainPhrase += "."

//3.7

print(mainPhrase.starts(with: "Hello"))

//print(mainPhrase.starts(with: "Helo"))

//3.8

print(mainPhrase.hasSuffix("world"))

//print(mainPhrase.hasSuffix("(modified)."))

//3.9

mainPhrase.insert("-", at: mainPhrase.index(mainPhrase.startIndex, offsetBy: 10))

mainPhrase.insert(" ", at: mainPhrase.index(mainPhrase.startIndex, offsetBy: 11))

//3.10

mainPhrase = mainPhrase.replacingOccurrences(of: "Thus us", with: "It is")

//3.11

print(Array(mainPhrase)[9])

print(Array(mainPhrase)[14])

//3.12

extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}

print(mainPhrase[9..<14])

//4.1

var integerNumber : Int?

//4.2

var decimalNumber : Double?

//4.3

integerNumber = 13

//4.4

integerNumber! += 13

//4.5

integerNumber = -integerNumber!

//4.6

decimalNumber = Double(integerNumber!)

//4.7

let pairOfValues : (Int?, Double?) = (integerNumber, decimalNumber)

//4.8

if pairOfValues.0 != nil {
    print(pairOfValues.0!)
}

//4.9

if pairOfValues.1 != nil {
    print(pairOfValues.1!)
}

//4.10

if let decimal = decimalNumber {
    print(decimal)
}

