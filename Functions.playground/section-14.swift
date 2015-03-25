func sumOfNumbers3(inout sum:Int, numbers:[Int])
{
    for n in numbers
    {
        sum += n
    }
}

var sum = 25
sumOfNumbers3(&sum, [2,3,4,5,6])
