import UIKit

func addUpEvenNumbersInArray(array: [Int], output: @escaping (Int) -> Void) {
    let sum = array.filter { $0 % 2 == 0 }.reduce(0, +)
    output(sum)
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

addUpEvenNumbersInArray(array: array) { sum in
    print("The sum of even numbers is \(sum).")
}
