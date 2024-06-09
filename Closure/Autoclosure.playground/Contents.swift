import UIKit

func sendGoodMorningGreetings(_ goodMorning: Bool, to whom: @autoclosure () -> String) {
    // If goodMorning argument is true, only then, we have to print the name of the sender.
    if goodMorning {
        print(whom())
    }
}

func someCPUIntensiveTask() -> String {
    // Let's say we are accessing the contact book of the device to filter out all the
    // contacts who have profile pictures, and who have organisation title in their contact poster.
    // This operation indeed takes some amount of memory. Finally, it will give an array of String. For simplicity purpose,
    // we are returning a single String value for now.
    "Anish"
}

// In this case, `someCPUIntensiveTask()` method won't get called
sendGoodMorningGreetings(false, to: someCPUIntensiveTask())
// In this case, `someCPUIntensiveTask()` will get called
sendGoodMorningGreetings(true, to: "Rohit")
