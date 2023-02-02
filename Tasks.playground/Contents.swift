import UIKit

//FirstTask
func minSplit(amount: Int) -> Int {
    let myArray = [50, 20, 10, 5, 1]
    var myAmount = amount
    var myResult = 0
    for i in 0..<myArray.count{
        while(myAmount >= myArray[i]){
            myAmount -= myArray[i]
            myResult += 1
        }
    }
    return myResult
}

//print(minSplit(amount: 172))


//SecondTask
func sumOfDigits(start: Int, end: Int) -> Int {
    var sum = 0
    for i in start...end{
        var m = i
        while m > 0 {
            sum += m % 10
            m /= 10
        }
    }
    return sum
}
//print(sumOfDigits(start: 17, end: 20))


//ThirdTask
func isProperly(sequence: String) -> Bool {
    var myresult = 0;
    var istrue = Bool()
    let myArray = Array(sequence)
    for i in 0..<myArray.count{
        if(myresult < 0){
            istrue = false
            break
        }
        else{
            if(String(myArray[i]) == "("){
                myresult += 1
            }
            else{
                myresult -= 1
            }
        }
    }
    if(myresult == 0){
        istrue = true
    }
    else{
        istrue = false
    }
    return istrue
}
    
//print(isProperly(sequence: "(()()))"))


//FourthTask
func countWays(n: Int, steps: [Int]) -> Int {
    var myArray = steps
    var a = 0;
    var b = 0;

    if(n == 1){
        if(myArray[0] == 1){
            return 2
        }
        else{
            return 1
        }
    }
    if(n == 0){
        return 1
    }
    if(myArray[0] == 1){
        myArray.remove(at: 0)
        a = countWays(n: n-1, steps: myArray)
        myArray.insert(1, at: 0)
    }
    if(myArray[1] == 1){
        myArray.remove(at: 0)
        myArray.remove(at: 0)
        b = countWays(n: n-2, steps: myArray)
    }
    
    return a + b
}

//print(countWays(n: 5, steps: [1,1,0,1,1]))


//FifthTask
func zeros(N: Int) -> Int {
    var numberOfZeros = 0
    var fiveDegrees = 5;
    while(N >= fiveDegrees){
        numberOfZeros += N / fiveDegrees
        fiveDegrees *= 5
    }
    return numberOfZeros
}
//print(zeros(N: 490))
