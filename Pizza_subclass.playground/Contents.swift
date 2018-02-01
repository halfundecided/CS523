
import UIKit



class Pizza{
    // a basic class for a pizza
    
    var diameter:Double = 0.0
    var crust:String = ""
    var toppings:[String] = []
    
    //Constractor
    init(){}
    
    init(diameter:Double, crust:String, toppings:[String]){
        self.diameter = diameter
        self.crust = crust
        self.toppings = toppings
    }
    
    //Methods
    func toppingsString()->String{
        var myString = ""
        for topping in toppings{
            myString = myString + topping + " "
        }
        return myString
    }
    
    func area() -> Double{
        return diameter * diameter * M_PI
    }
    
    func price(costPerSquareUnit:Double)->Double{
        return self.area() * costPerSquareUnit
    }
}


let myPizza = Pizza()
let myFriendsPizza = Pizza()
let darrylsPizza = Pizza(
    diameter: 14,
    crust: "Wheat",
    toppings: ["Fresh Mozzarella","Tomatoes"])


myPizza.diameter = 10 //10 inch 25.4 cm pizza
myPizza.crust = "White"
myPizza.toppings = ["Chicken","BBQ Sauce","Cheese","Red Onions"]

myFriendsPizza.diameter = 12 //12 inch 30.48cm pizza
myFriendsPizza.crust = "Wheat"
myFriendsPizza.toppings = ["Cheese","Pepperoni"]



print(myPizza.diameter)
print(myFriendsPizza.toppings)

print(myFriendsPizza.toppingsString())
print(myPizza.toppingsString())

print (myPizza.area())
print(myFriendsPizza.area())

print(myPizza.price(costPerSquareUnit: 0.02))
print(myPizza.price(costPerSquareUnit: 0.015))

//*****************************
// The subclass
//*****************************

class DishPizza:Pizza{

    var panDepth:Double = 4.0

    override init(){
        super.init()
    }
    
    init(panDepth:Double){
        super.init()
        self.panDepth = panDepth
    }
    
    init(diameter: Double, crust: String, toppings: [String], panDepth:Double) {
        super.init(diameter: diameter, crust: crust, toppings: toppings)
        self.panDepth = panDepth
    }
    
    func volume() -> Double{
        return area() * panDepth
    }
    
    override func price(costPerSquareUnit: Double) -> Double {
        return volume() * costPerSquareUnit
    }
    
    func price(costPerSquareUnit:Double, panDepth:Double) -> Double{
        self.panDepth = panDepth
        return volume() * costPerSquareUnit
    }
}

let annahsPizza = DishPizza()
let jillsPizza = DishPizza(panDepth: 3.0)
let flosPizza = DishPizza(
    diameter: 10,
    crust: "White",
    toppings: ["Cheese"],
    panDepth: 3.0)

//test instance methods
// didn't use print here
annahsPizza.diameter = 8.0
annahsPizza.crust = "White"
annahsPizza.toppings = ["Cheese","Sausage","Pepperoni"]
annahsPizza.toppingsString()
annahsPizza.area()
annahsPizza.volume()
annahsPizza.price(costPerSquareUnit: 0.023)
