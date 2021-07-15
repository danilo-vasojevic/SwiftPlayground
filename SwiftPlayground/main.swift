//
//  main.swift
//  SwiftPlayground
//
//  Created by Danilo Vasojevic on 15.7.21..
//

print("------------ VARIABLES ------------")
// Declare variable with implicit type
var num = 15
let 🐶🐮 = "dogcow"
// Declare variable with explitit type
var word:String = "Blah Blah"

// Declare constant with implicit type
let constNum = 15
// Declare constant with explitit type
let constWord:String = "Blah Blah"
// Can't change constant variables

print("------------ CONDITIONAL STATEMENTS ------------")
// If statement
if(constWord == "Blah Blah") { print("constWord is Blah Blah") }
else if (constWord == "Blah" || constWord == "B") { print("constWord is Blah or B") }
else { print("constWord is something else") }

// Converted to switch
switch(constWord) {
case "Blah Blah": print("constWord is Blah Blah")
case "Blah", "B": print("constWord is Blah or B")
default: print("constWord is something else")
}

print("------------ LOOPS ------------")
// For loop without counter
for _ in 1...5 {}

// For loop with counter (sum of ints in range)
var sum = 0
for count in 1...5 { sum += count }
print("Sum = \(sum)")

// While loop
while num > 0 { num -= 1 }

// Repeat Until loop
repeat { num += 1 } while num < 5

print("------------ FUNCTIONS ------------")
// Function without parameters
func funcName() {}
// Function returning Int
func getNum() -> Int { return num }
/* Full function declaration with parameters and call
Synthax: func fuctionName([paramLabel] [paramReferenceName]:[ParamType]) -> [ReturnType] { [code] }
paramLabel is optional and ReturnType is only used on non-void functions */
func squareIt(number param:Int) -> Int{ return param * param }
var result = squareIt(number: 15)
print("15 squared is: \(result)")

print("------------ CLASSES ------------")
// Now switch to FirstClass.swift file, then return here

// Instantiate a class
var emp1 = Employee()
emp1.name = "Staropramen"
emp1.salary = 1000
emp1.role = .artDirector // We already know which type to expect, so no explicit type declaration is needed
emp1.introduceYourself()
Employee(named: "Hoehaarden", paid: 800, doing: .meetingAttender).introduceYourself()
Manager(named: "Jelen Pivo", paid: 2000, withTeamOf: 15).introduceYourself()


print("------------ OPTIONALS ------------")
// Variables without intialization
var num2:Int? = nil // Either some Int, or nil. Try a few vaules
var num3:Int? // Also fine, pretty much same as above
var num4:Int! // Unwrapped optional. Just be careful :-D
// Check the optional for nil before calling any methods
if num2 != nil { result = num2!.signum() }

// Optional binding
if let actual = num2 { print(actual.signum()) }

// Optional chaining
// num2?.signum() // Won't call if nil

print("------------ ARRAYS ------------")
var emptyArray:[String] = []
var alsoEmptyArray = [String]()
var animals = ["Mouse", "Cat", "Dog", "Cow"]
animals[0] = "My " + animals[0] // Edit element
animals.append("Ox") // Append
animals += ["Seal", "Otter"] // Concatenate
animals.remove(at: animals.count-1) // remove last element

// Iterate array (foreach)
for animal in animals { print(animal) }
// With counter
for count in 0...animals.count-1 { print(count) }

