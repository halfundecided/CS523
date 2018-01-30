/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System
 */

import UIKit

class ATM {
    var name : Character = " "
    var number : Character = " "
}

class ATMLogin {
    var password : Character = " "
    var user : Character = " "
}

class Session {
    var lastMessage : Character = " "
    var number : Character = " "
}

class InnerCash {
    var bill1 : Int = 1
    var bill10 : Int = 10
    var bill100 : Int = 100
    var bill20 : Int = 20
    var bill5 : Int = 5
    var bill50 : Int = 50
}

class Money {
    var value : Float = 0.0
}

class Log {
    var cardNumber : Character = " "
    var date : Date = Date()
    var details : Character = " "
    var sessionNumber : Character = " "
    var time : Timer = Timer()
    var transactionNumber : Character = " "
}
class Card {
    var expirationData : Date = Date()
    var holderName : Character = " "
    var holderSurname : Character = " "
    var number : Character = " "
    var password : Character = " "
}

class Account {
    var initialBalance : Float = 0.0
    var number : Character = " "
    var overdraftLimit : Int = 0
    var Owner : Character = " "
}

class Bank {
    var code : Character = " "
    var name : Character = " "
}

class Transaction {
    var amount : Float = 0.0
    var currentBalance : Int = 0
    var date : Date = Date()
    var done : Bool = false
    var number : Character = " "
    var time : Timer = Timer()
}

class Transfer {
    var targetAccountNumber : Character = " "
    var targetBankCode : Character = " "
}

class Currency {
    var country : Character = " "
    var name : Character = " "
    var symbol : Character = " "
}

