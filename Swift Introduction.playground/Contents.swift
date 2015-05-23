//: Playground - noun: a place where people can play

import UIKit

// Variables and Constants

var myStr = "Swift"
var myValue = 23.1 //(Implicit variable declaration or type inference)
var myDoubleValue: Double = 23 //(Explicit variable declaration)

// let

let myAge = 38
let message = "My age is " + String(myAge) //(Converting value to a String)
let newMessage = "My age is \(myAge)" //(Converting value to a String using backslash or interpolation)

// String
var movie:String = "Independence Day "

count(movie) // count of string

// Use NSString to format a double or float value
var range = NSString(format: "%.2f", 24.5)

// Concatenate String values
movie += String(range)

// Array

// Declarations
// var fruits = [“Orange”, “Apple”, “Grapes”] – Short declartion
// var fruits:Array = [“Orange”, “Apple”, “Grapes”] – Long declaration
// var fruits:[String] = [] – Assign empty array
var fruits:[String] = ["Orange", "Apple", "Grapes"] // short declaration with type.

// insert item at index
fruits.insert("Mangoes", atIndex: 2)

// append item to the last
fruits.append("Pine Apple")

// count of array
fruits.count

// remove item
fruits.removeAtIndex(1)

// sort array elements
fruits.sort { (a, b) -> Bool in
    a < b
}
// retrieve index using find
find(fruits, "Mangoes")

// Dicionary

// Declaration
// var employees = [1:”John”,2:”Peter”,3:”David”] // Short form
// var employees:Dictionary = [1:”John”,2:”Peter”,3:”David”] // Long form
// var employees:[Int:String] = Dictionary() // Empty dictionary
var employees:[Int:String] = [1:"John",2:"Peter",3:"David"] //Short form with type

// Add new item to dictionary
employees[4] = "Bob"

// Remove an item using key
employees.removeValueForKey(3)


// Control flow

// if else
if fruits[0] == "Grapes" {
    println("for breakfast")
} else if fruits[0] == "Apple" {
    println("for lunch")
} else {
    println("Nothing")
}

// for statements

// exclusive range
for index in 0..<fruits.count {
    println(fruits[index])
}

// inclusive range
for index in 0...fruits.count-1 {
    println(fruits[index])
}

// iterate array items
for index in fruits {
    println(index)
}

// traditional for statement
for var index=0; index < fruits.count; index++ {
    println(fruits[index])
}

// switch case
var index:Int = 1

// supports more than 1 value
// no need of break statement

switch index {
case 1, 3 :
    println("for breakfast")
case 2, 4 :
    println("for lunch")
default :
    println("None")
}
// while and do while

index = 0
while index < fruits.count {
    println(fruits[index])
    index++
}

index = 0
do {
    println(fruits[index])
    index++
} while index < fruits.count

// functions 

// with and without paramters

func sum(number1:Int, number2: Int) -> (Int) {
    return number1 + number2
}

func sum() -> (Int) {
    return 10 + 5
}

// function with external paramter name

func sum(addNumber1 number1:Int, withNumber2 number2: Int) -> (Int) {
    return number1 + number2
}
println(sum(addNumber1: 10, withNumber2: 20))

// function with same local and external paramter name

func sum(#number1:Int, #withNumber2: Int) -> (Int) {
    return number1 + withNumber2
}

println(sum(number1: 10, withNumber2: 20))

// function with default paramter value

func sum(number1:Int, withNumber2: Int = 20) -> (Int) {
    return number1 + withNumber2
}
println(sum(10))

// function with variadic paramters

// Variadic parameters
func totalSum(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
totalSum(1,2,3,4,5)

// functon with inout paramters

var employee = "John"
func greetings(inout employee:String) {
    employee += "!"
}
println(greetings(&employee))
println(&employee)


