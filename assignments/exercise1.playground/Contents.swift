/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System.
 */

import UIKit

let loan : Int = 1000
var balance : Double

// Calculate interest
func interest(balance : Double) -> Double {
    var interest : Double
    if balance > 500 {
        interest = balance * (2/100)
        return interest
    } else {
        interest = balance * (1/100)
        return interest
    }
}
print(interest(balance: Double(loan)))

/*
// Calculate monthly payment without interest
func monthlyPay(interest : Double) -> Double {
    var monthlyPay : Double
    monthlyPay = 100 + interest(balance)
    
}

while balance <= 100 {
    
}
*/



