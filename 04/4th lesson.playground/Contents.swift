import UIKit

//1.1

func fibonacci(n: Int) -> [Int] {
    var fibonacciArray = [Int]()
    
    fibonacciArray.append(1)
    fibonacciArray.append(1)
    
    for i in 2..<n {
        fibonacciArray.append(fibonacciArray[i-1] + fibonacciArray[i-2])
    }
    return fibonacciArray
}

let fibArray = fibonacci(n: 10)

//1.2

//let revArray : [Int] = fibonacci(n: 10).reversed()

let revArray : [Int] = fibArray.reversed()

//1.3

func isPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func primeArray(lessThen: Int) -> [Int] {
    var array = [Int]()
    let range = 1..<lessThen
    
    for i in range {
        if isPrime(number: i) {
            array.append(i)
        }
    }
    return array
}

let snglArray = primeArray(lessThen: 100)

//1.4

print(snglArray.count)

//1.5

print(snglArray[9])

//1.6

print(snglArray[14..<20])

//1.7

var rptArray = [Int]()

for _ in 1...10 {
    rptArray.append(snglArray[9])
}

//1.8

var  oddArray : [Any] = [1, 3, 5, 7, 9]

//1.9

oddArray.append(11)

//1.10

oddArray.append([15, 17, 19])

//1.11

oddArray.insert(13, at: 6)

//1.12

oddArray.removeSubrange(4...6)

//1.13

print(oddArray.removeLast())

//1.14

oddArray.replaceSubrange(1...3, with: [2, 3, 4])

//1.15

oddArray.remove(at: 2)

//1.16

let isContainsNumber = oddArray.contains { (number) -> Bool in
    if number as! Int == 3 {
        return true
    }
    return false
}

if isContainsNumber == true {
    print("The element is present in array")
} else {
    print("The element is absent in array")
}

//1.17

for value in oddArray {
    print(String(value as! Int))
}

//2.1

let chStet : Set = ["a", "b", "c", "d"]

//2.2

var mChSet = chStet

//2.3

print(mChSet.count)

//2.4

mChSet.insert("e")

//2.5

let strChSet = mChSet.sorted()

//2.6

print(mChSet.remove("f"))

//2.7

print(mChSet.description)

//2.8

print(mChSet.distance(from: mChSet.startIndex, to: mChSet.firstIndex(of: "a")!))

//2.9

mChSet.insert("a")

//2.10

let aSet : Set = ["1", "2", "One", "Two", "Three"]

let bSet : Set = ["1", "2", "3", "One", "Two"]

//2.11

let cSet = aSet.intersection(bSet)

//2.12

let uniqueInASet = aSet.subtracting(bSet)

let uniqueInBSet = bSet.subtracting(aSet)

//2.13

let uniqueBoth = aSet.symmetricDifference(bSet)

//2.14

let allElements = aSet.union(bSet)

//2.15

let xSet : Set = [2, 3, 4]

let ySet : Set = [1, 2, 3, 4, 5, 6]

let zSet : Set = [3, 4, 2]

let x1Set : Set = [5, 6, 7]

//2.16

print(xSet.isSubset(of: ySet))

print(ySet.isSubset(of: xSet))

//2.17

print(xSet.isSuperset(of: ySet))

print(ySet.isSuperset(of: xSet))

//2.18

if xSet.isSubset(of: zSet) && zSet.isSubset(of: xSet) {
    print("xSet and zSet are equal")
}

//2.19

print(xSet.isStrictSubset(of: zSet))

//2.20

print(xSet.isStrictSuperset(of: zSet))

//3.1

let nDict = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"]


//let nDict = ["1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"]

//3.2

print(nDict[3]!)

//3.3

print(nDict[nDict.index(forKey: 4)!])

//3.4

var mNDict = nDict

//3.5

//mNDict[6] = "Six"

mNDict.updateValue("Six", forKey: 6)

mNDict.updateValue("Seven", forKey: 7)

//3.6

mNDict.updateValue("Eight", forKey: 8)

//3.7

mNDict.removeValue(forKey: 5)

//3.8

mNDict.remove(at: mNDict.index(forKey: 4)!)

//3.9

print(mNDict.distance(from: mNDict.index(forKey: 1)!, to: mNDict.index(forKey: 7)!))

//3.10

let mNDictKey = Array(mNDict.keys)

//3.11

let mNDictValue = Array(mNDict.values)

//3.12

print(mNDict.count)

print(mNDict.keys.count)

print(mNDict.values.count)

//3.13

print(mNDict.description)

//type(of: mNDict.description)
