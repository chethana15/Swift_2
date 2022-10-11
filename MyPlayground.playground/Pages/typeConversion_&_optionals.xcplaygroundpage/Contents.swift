let integerPart : Int = 9
let decimalPart : Float = 0.8

//let gravityConstant = integerPart + decimalPart --> will throw an error "Binary operator '+' cannot be applied to operands of type 'Int' and 'Float' "
let earthGravityConstant = Float(integerPart) + decimalPart
let earthGravityConstant2 = integerPart + Int(decimalPart)


let myNumber: Int? = 15
print(myNumber as Any)
print(myNumber!)//this kind of unwrapping can be used only when u are sure that optional has some value when we access it else it crashes

let university : String = "BU"
let rollNumber : Int = 7013

//let registerNumber = university + rollNumber --> "Binary operator '+' cannot be applied to operands of type 'String' and 'Int'"
let registerNumber = university + String(rollNumber)
let regNumber = (Int(university) ?? 0) + rollNumber

let stringToInt : Int

/*stringToInt = Int(university) --> "Value of optional type 'Int?' must be unwrapped to a value of type 'Int'" because string value can't be converted to int value to overcome this
    1. Coalesce using '??' to provide a default when the optional value contains 'nil'
    2. Force-unwrap using '!' to abort execution if the optional value contains 'nil'
 */
// 1. Coalesce using '??' to provide a default when the optional value contains 'nil'
stringToInt = Int(university) ?? 12

// 2. Force-unwrap using '!' to abort execution if the optional value contains 'nil'

let stringToInt2 : Int
//stringToInt2 = Int(university)!
//this line doesn't throw an error developing but while executing it crashed as there is no university when converted to int type has the value nil
//in order to force unwrap an optional value we need to initialse the variable as optional while declaring

let stringToInt3 : Int?
//optional, meaning that it might contain some Int value, or it might contain no value at all
stringToInt3 = Int(university)


//MARK: - PLAYING WITH OPTIONALS

var optionalNumber : Int?
//let maxNumber : Int = 10

for number in 1...10 {
    if (number%2==0){
        optionalNumber = number
        print(optionalNumber!)
    }
    else{
        optionalNumber = nil
        print(optionalNumber as Any)
    }
}

//MARK: - Handling optionals



