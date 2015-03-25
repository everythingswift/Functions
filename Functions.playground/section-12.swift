func sumOfNumbers(numbers:Int...) -> Int{
    var sum:Int = 0
    
    for n in numbers{
        sum += n
    }
    
    return sum
}

sumOfNumbers()
sumOfNumbers(1,2,3,4,5,6,7,8,9)
