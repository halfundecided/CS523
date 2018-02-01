var firstNumber = ""
var secondNumber = ""
var operand = ""
var result:String = ""


func myClr(_ sender: AnyObject) {
	myText.text=""
	result = ""
	firstNumber = ""
	secondNumber = ""
	operand = ""
	result = ""
}

func numberOne( {
	if result == "" {
		myText.text="1"
		result="1"
	} else {
		result=result+"1"
		myText.text = result


func myAdd {
	firstNumber = result
	myText.text=result+"+"
	operand="+"
	result=""

func Equal {
	let firstNumberInt : Double = Double(firstNumber)!
	let secondNumberInt : Double = Double(result)!

	var finalResult : Double = 0
	if operand == "+" {
		finalResult = firstNumberInt + secondNumberInt
	}
	myText.text=""
	myText.Text=String(finalResult)


    @IBAction func One(_ sender: Any) {
        result = result + "1"
        myLabel.text = result
        
    }
    @IBAction func Two(_ sender: Any) {
        result = result + "2"
        myLabel.text = result
    }
