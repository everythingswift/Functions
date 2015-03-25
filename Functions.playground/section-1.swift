import UIKit

func printIsEvenOrOdd(number: Int)
{
    if(number % 2 == 0){
        println("Number is even")
    }
    else{
        println("Number is odd")
    }
}

printIsEvenOrOdd(5)
printIsEvenOrOdd(8)

func biggerString(str1: String, str2:String) ->String
{
    if(str1 > str2){
        return str1
    }
    
    return str2
}

biggerString("Developer1", "Developer2")

func getEvenAndOdd(numbers:[Int]) -> (evenArray:[Int], oddArray:[Int])
{
    var evenNumbers:[Int] = []
    var oddNumbers:[Int] = []
    
    for n in numbers
    {
        if(n%2 == 0){
            evenNumbers.append(n)
        }
        else
        {
            oddNumbers.append(n)
        }
    }
    
    return (evenNumbers, oddNumbers)
}

let firstTenNumbers:[Int] = [1,2,3,4,5,6,7,8,9,10]

let evenNumbersArray = getEvenAndOdd(firstTenNumbers).evenArray
let oddNumbersArray = getEvenAndOdd(firstTenNumbers).oddArray

func getEvenAndOdd2(numbers:[Int]) -> (evenArray:[Int], oddArray:[Int])?
{
    if(numbers.count == 0){
        return nil;
    }
    
    var evenNumbers:[Int] = []
    var oddNumbers:[Int] = []
    
    for n in numbers
    {
        if(n%2 == 0){
            evenNumbers.append(n)
        }
        else
        {
            oddNumbers.append(n)
        }
    }
    
    return (evenNumbers, oddNumbers)
}

let firstTenNumbers2:[Int] = []

if let returnArrays = getEvenAndOdd2(firstTenNumbers2)
{
    let evenNumbersArray = returnArrays.evenArray
    let oddNumbersArray = returnArrays.oddArray
}
else
{
    println("The else clause of optional binding")
}

func getCombinedUpperCaseString(s1:String, s2:String) -> String {
    return s1.uppercaseString + s2.uppercaseString
}

let combinedString = getCombinedUpperCaseString("abcD", "efGh")


func getCombinedUpperCaseString2(firstString s1:String, secondString s2:String) -> String {
    return s1.uppercaseString + s2.uppercaseString
}

let combinedString2 = getCombinedUpperCaseString2( firstString: "abcD", secondString: "efGh")

func getCombinedUpperCaseString3(#firstString:String, #secondString:String) -> String {
    return firstString.uppercaseString + secondString.uppercaseString
}

let combinedString3 = getCombinedUpperCaseString3( firstString: "abcD", secondString: "efGh")

func getCombinedUpperCaseString4(s1:String, secondString s2:String = "END") -> String {
    return s1.uppercaseString + s2.uppercaseString
}

let combinedString4 = getCombinedUpperCaseString4("abcD")
let combinedString5 = getCombinedUpperCaseString4("abcD", secondString:"efgh")

func sumOfNumbers(numbers:Int...) -> Int{
    var sum:Int = 0
    
    for n in numbers{
        sum += n
    }
    
    return sum
}

sumOfNumbers()
sumOfNumbers(1,2,3,4,5,6,7,8,9)

func sumOfNumbers2(var sumOfNum sum:Int = 0, numbers:[Int]) -> Int{
    
    if(countElements(numbers) == 0){
        return sum
    }
    
    for n in numbers{
        sum += n
    }
    
    return sum
}

let numberArray:[Int] = [1,2,3,4,5,6,7,8,9]
sumOfNumbers2(sumOfNum:5, [])
sumOfNumbers2(sumOfNum:0, numberArray)

func sumOfNumbers3(inout sum:Int, numbers:[Int])
{
    for n in numbers
    {
        sum += n
    }
}

var sum = 25
sumOfNumbers3(&sum, [2,3,4,5,6])

