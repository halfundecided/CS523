/*
Mijeong Ban
You took out a loan of $1000. The details of your loan are as follows:
• Interest on your loan is compounded at a rate of 2% per month while the outstanding balance of the loan is more than $500,
and at 1% per month otherwise.
• You pay back $100 every month, except for the last payment (when the balance will be less than or equal to $100)
• You pay at the end of the month, after the interest on the balance has been compounded.
Write a program that displays a monthly statement of the balance (after the interest is added and the monthly payment has been made).
YOU DO NOT NEED THE USER TO ENTER THE AMOUNT (keep it fixed at $1,000).
Your program should also display the amount of the final payment, and how many months it took to pay back the loan.
*/

#include <iostream>

using namespace std;


int main() {
  double balance = 1000.0;
  double monthlybalance = 1000.0;
  double monthlypaid = 0.0;
  double totalInterest = 0.0;
  double interest = 0.0;
  double finalPayment = 0.0;
  int months = 0;

  while (balance > 0) {

    if(balance > 500){
      interest = balance * 0.02;
    } else {
      interest = balance * 0.01;
    }
    monthlypaid = 100 - interest;
    monthlybalance = monthlybalance - monthlypaid;
    balance = balance - 100;
    months += 1;
    cout << "Month " << months << ":" << endl;
    cout << "The interest of this month: $" << interest << endl;
    cout << "You need to pay $" << monthlybalance << " more for the loan." << endl;
    cout << "---------------------------------" << endl;

    totalInterest = totalInterest + interest;
  }

  cout << "Month " << months+1 << ":" << endl;
  cout << "You paid $" << monthlybalance << " as the last payment" << endl;

  finalPayment = 1000 + totalInterest;

  cout << endl;
  cout << "Your total interest is $" << totalInterest << endl;
  cout << "The final payment is $" << finalPayment << endl;

  months = 0;

  while (finalPayment > 0) {
    finalPayment = finalPayment - 100;
    months += 1;
  }
  cout << "Number of months: " << months << endl;

  return 0;
}
