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
    print("The else clause of optional binding")
}
