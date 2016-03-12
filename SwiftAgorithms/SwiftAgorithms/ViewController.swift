//
//  ViewController.swift
//  SwiftAgorithms
//
//  Created by Mulkey, Rodrigo S. on 3/11/16.
//  Copyright © 2016 Mulkey, Rodrigo S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testWordCountFuntion()
        testIsPalindrome()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testWordCountFuntion() {
        
        let path = NSBundle.mainBundle().pathForResource("wordCountFile", ofType: "txt")
        let text = try? String(contentsOfFile: path! as String, encoding: NSUTF8StringEncoding)
        
        //let testText: String = text as! String
                
        wordCount(text!)
        
    }
    
    func wordCount(text: String) -> Dictionary<String, Int> {
        
        let words = text.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        var wordDictionary = Dictionary<String, Int>()
        
        for word in words {
            if let count = wordDictionary[word] {
                wordDictionary[word] = count+1
            } else {
                wordDictionary[word] = 1
            }
        }
        
        //print(wordDictionary)
        
        return wordDictionary
    }
    
    
    func testIsPalindrome () {
        
        let testText1 = "tattarrattat" // The longest palindrome in the english language, according to the Oxford Dictionary
        let testText2 = "not a palindrome"
        
        palindromeCheck(testText1);
        palindromeCheck(testText2);
        
    }
    
    func palindromeCheck(texInput: String) -> Bool {
        
        let reverse = String(texInput.characters.reverse())
    
        if (reverse == texInput) {
            
            print("\(texInput) is a palindrome")
            return true
            
        } else {
            
            print("\(texInput) is not a palindrome ")
            return false
        }
   
    }

}

