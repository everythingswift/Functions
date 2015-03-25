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
