//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//: Playground - noun: a place where people can play

import UIKit

class Pizza{
    var radius:Double = 0.0
    var crust:String = "Hi"
    var toppings:[String] = ["one", "two"]
    
    init(){
    
    }
    
    
    init(radius:Double,crust:String,toppings:[String]){
        self.radius=radius
        self.crust=crust
        self.toppings=toppings
    
    }
    
    func changeRadius(radius:Double){
        self.radius=radius
    
    }
    func area() -> Double{
        return radius * radius * M_PI
    }
    
    func price(costPerSquareUnit:Double)-> Double{
        return area() * costPerSquareUnit
    }
    
    
      func toppingsString()->String{
        var mytopString:String=" "
        
        for top in toppings {
            mytopString=mytopString+" vd "+top
        }
        return mytopString
    
    
      }

    
}

class topPizza:Pizza{
    var extraSize:Int=5
    
    init(extraSize:Int){
        super.init()
        self.extraSize=extraSize
    
    }

    init(extraSize:Int,radius:Double,crust:String,toppings:[String]){
        super.init(radius:radius,crust:crust,toppings: toppings)
        self.extraSize=extraSize
        
    }
    
    override func area() -> Double{
        return radius * radius * M_PI*Double(extraSize)
    }


}

var mypizza=Pizza()
print(mypizza.toppingsString())
var toppings:[String] = ["one", "two"]


var yourpizza=Pizza(radius: 3,crust: "Test1",toppings: toppings)

var newpizza=topPizza(extraSize:5)

print(newpizza.extraSize)
print(newpizza.toppingsString())

var newpizza2=topPizza(extraSize:5, radius: 5, crust: "Test2",toppings: toppings)




