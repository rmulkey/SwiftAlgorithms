//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// In this challenge, you'll create a function that takes three arguments, an age, first name, and last name. This function should return true if the age is 18 or above or if the full name has more than 12 letters. Once you've written the function, you should test it using Bob Jones, who's 14, Samantha Brown, who's 17, and Christopher Washington, who's 33. Here's a hint. In order to test two conditions, you can write an if statement like this.

func testAgeAndName (age: Int, firstName: String, lastName: String) -> Bool {
    
    if (age >= 18) && (firstName.characters.count + lastName.characters.count > 12) {
        return true
    }
    
    return false
    
}


