import UIKit

func getSumOf(array:[Int], handler: ((Int)->Void)) {
    //step 2
    var sum: Int = 0
    for value in array {
        sum += value
    }
    
    //step 3
    handler(sum)
}


func doSomething() {
    //setp 1
    getSumOf(array: [16,756,442,6,23]) {sum in
        print(sum)
        //step 4, finishing the execution
    }
}


doSomething()
