import UIKit



class StorageUseCaseExample {
    
    var complitionHandler: ((Int)->Void)?
    
    func getSumOf(array:[Int], handler: @escaping ((Int)->Void)) {
            //step 2
           //here I'm taking for loop just for example, in real case it'll be something else like API call
           var sum: Int = 0
            for value in array {
                sum += value
            }
    //step 3
            self.complitionHandler = handler
        }
    
    
    func doSomething() {
            //setp 1
            self.getSumOf(array: [16,756,442,6,23]) { [weak self](sum) in
                print(sum)
                //step 4, finishing the execution
            }
        }
    //Here we are storing the closure for future use.
    //It will print the sumof all the passed numbers.
}


class AsyncUseCaseExample {
    func getSumOf(array:[Int], handler: @escaping ((Int)->Void)) {
        //step 2
        var sum: Int = 0
        for value in array {
            sum += value
        }
        //step 3
        
        let seconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
             handler(sum)
        }
    }
}
