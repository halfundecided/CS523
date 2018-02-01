
import UIKit
//Protocol 

protocol FoodPriceProtocol{
    func price(pricePerUnit:Double) -> Double
}

//The Abstract 

class AbstractPizza {
    let pizzaPi = 3.14
    var size:Double! = nil  // Nil helps indicate empty
    var crust:AnyObject! = nil
    var topping:[String]! = nil
    
    init(){
        pizzaDidLoad()
    }
    class func personalPizza() -> AnyObject!{  //AnyObject helps subclass
        let pizza = AbstractPizza()
        pizza.size = 10.0
        pizza.topping = ["Pizza Sauce","Cheese"]
        pizza.crust = "White" as AnyObject
        return pizza
    }
    
    func area() -> Double! {  //Abstract functions often return nil
        return nil            // to indicate empty
    }
    
    func pizzaDidLoad(){

    
    }
}


class FlatPizza:AbstractPizza,FoodPriceProtocol{ //flat round pizza
    //define area
    override func area() -> Double! {
        let radius = size / 2.0
        return radius * radius * pizzaPi
    }
    //set default values for properties
    override func pizzaDidLoad() {
        size = 10.0
        crust = "White" as AnyObject
        topping = ["Pizza Sauce","Cheese"]
    }
    //protocol
    func price(pricePerUnit: Double) -> Double {
        return area() * pricePerUnit
    }
}


// test area
let flatRoundPizza = FlatPizza()
flatRoundPizza.area()
flatRoundPizza.price(pricePerUnit: 0.05)



