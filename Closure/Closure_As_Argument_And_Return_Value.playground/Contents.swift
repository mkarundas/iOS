import UIKit

// Credit: https://medium.com/swiftable/a-guide-to-closures-in-swift-368e6aca6d71

// Function that takes a closure as an argument
func performOperation(on a: Int, and b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}


// Define closure expressions for different operations
let addClosure: (Int, Int) -> Int = { $0 + $1 }
let subtractClosure: (Int, Int) -> Int = { $0 - $1 }
let multiplyClosure: (Int, Int) -> Int = { $0 * $1 }


let resultAdd = performOperation(on: 5, and: 3, operation: addClosure) // Result: 8
let resultSubtract = performOperation(on: 10, and: 4, operation: subtractClosure) // Result: 6
let resultMultiply = performOperation(on: 6, and: 2, operation: multiplyClosure) // Result: 12

print(resultAdd, resultSubtract, resultMultiply)


// Function that returns a closure
func makeMultiplier(factor: Int) -> (Int) -> Int {
    return { number in
        return number * factor
    }
}

let double = makeMultiplier(factor: 2)
let triple = makeMultiplier(factor: 3)

let resultDouble = double(5) // Result: 10
let resultTriple = triple(4) // Result: 12

print(resultDouble, resultTriple)
