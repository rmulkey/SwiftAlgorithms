//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//    - For this Challenge, I'd like you to create a loop that runs 100 times. The indexes of that loop should be 1-100. Each time the loop runs, you should add an item to an array that is the square of the current index. For example, if the index is three, then your array should get the umber nine added to it. Once you're finished with the array, loop through it and print any item evenly divisible by three. Here's a hint. In order to print that number, you can call the print function.

var squareArray : [Int] = Array()

for i in 1...100 {
    
    squareArray.append(i*i)
}

for number in squareArray {
    
    if (number % 3 == 0) {
        print(number)
    }
}

