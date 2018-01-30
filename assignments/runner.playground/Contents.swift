/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System
 */
import UIKit

let names = ["Elena", "Thomas", "Hamilton", "Suzie", "Phil", "Matt", "Alex", "Emma", "John", "James", "Jane", "Emily", "Daniel", "Neda", "Aaron", "Kate"]

let times = [341, 273, 278, 329, 445, 402, 388, 275, 243, 334, 412, 393, 299, 343, 317, 265]

var min = 0
for var i in 1..<names.count {
    if(times[i] < times[min]) {
        min = i
    }
}

var minutes = times[min] / 60
var seconds = times[min] - (minutes * 60)

print("The fastest runner is \(names[min]), and his time is \(minutes).\(seconds) mins." )
