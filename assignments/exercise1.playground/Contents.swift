/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System.
 */

import UIKit

var balance : Double = 1000.0
var monthlyBalance : Double = 1000.0
var monthlyPaid : Double = 0.0
var totalInterest : Double = 0.0
var interest : Double = 0.0
var finalPayment = 0.0
var months : Int = 0

while balance > 0 {
    if balance > 500 {
        interest = balance * 0.02
    } else {
        interest = balance * 0.01
    }
    monthlyPaid = 100 - interest
    monthlyBalance = monthlyBalance - monthlyPaid
    balance = balance - 100
    months += 1
    print("Month \(months):")
    print("The interest of this month: $\(interest)")
    print("You need to pay $\(monthlyBalance) more for the loan.")
    print("------------------------------------------------")
    
    totalInterest = totalInterest + interest;
}

print("Month \(months+1):")
print("You paid $\(monthlyBalance) as the last payment.")
print("------------------------------------------------")

finalPayment = 1000 + totalInterest

print("Your total interest is $\(totalInterest)")
print("The final payment is $\(finalPayment)")

months = 0

while finalPayment > 0 {
    finalPayment = finalPayment - 100
    months += 1
}

print("Number of months: \(months) months")






