/*
 CS-523
 Mijeong Ban
 I pledge my honor that I have abided by the Stevens Honor System
 */

import Foundation
import UIKit

class ATM {
    var name : Character
    var number : Character
    init() {
        self.name = name
        self.number = number
    }
}

class ATMLogin {
    var password : Character
    var user : Character
    init((password: Character, user: Character)) {
        self.password = password
        self.user = user
    }
}

class Session : ATM {
    var lastMessage : Character
    override init() {
        self.lastMessage = lastMessage
        super.init()
    }
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

class Log : ATM {
    var cardNumber : Character = ""
    var date : Date
    var details : Character = ""
    var sessionNumber : Character = ""
    var time : Timer
    var transactionNumber : Character = ""
    
}
class Card {
    var expirationData : Date
    var holderName : Character
    var holderSurname : Character
    var number : Character
    var password : Character
    init() {
        self.expirationData = expirationData
        self.holderName = holderName
        self.holderSurname = holderSurname
        self.number = number
        self.password = password
    }
}

class Account {
    var initialBalance : Float
    var number : Character
    var overdraftLimit : Int
    var Owner : Character
    init() {
        self.initialBalance = initialBalance
        self.number = number
        self.overdraftLimit = overdraftLimit
        self.Owner = Owner
    }
}

class Bank {
    var code : Character
    var name : Character
    init() {
        self.code = code
        self.name = name
    }
}

class Transaction {
    var amount : Float
    var currentBalance : Int
    var date : Date
    var done : Bool
    var number : Character
    var time : Timer
    init() {
        self.amount = amount
        self.currentBalance = currentBalance
    }
}

class Transfer {
    var targetAccountNumber : Character
    var targetBankCode : Character
}

class Currency {
    var country : Character
    var name : Character
    var symbol : Character
}

