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
