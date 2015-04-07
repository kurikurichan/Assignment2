//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import Darwin
import UIKit

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
    
    1st #: 0
    2nd #: 1
    3rd #: 1    (1st + 2nd) = 1
    4th #: 2    (2nd + 3rd) = 2
    5th #: 3    (3rd + 4th) = 3
    6th #: 5    (4th + 5th) = 5
    7th #: 8    (5th + 6th) = 8
    
    
    Xth fibonacci number is the fibonacciNumberAtIndex
    indexOfFibonacciNumber is the number that the user puts in. I will tie that in to the action button later. This number represents the number of times a number should be fibonacci'ed

*/
    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    class FibonacciAdder {
        
        let phi = ( ( 1.0 + sqrt(5) ) / 2.0 )
        
        var indexOfFibonacciNumber:Int = 0
        
        func fibonacciNumberAtIndex (indexOfFibonacciNumber:Int) -> Int {
            
            if indexOfFibonacciNumber < 1 {
                return 0
            }
            
            if indexOfFibonacciNumber == 1 {
                return 1
            }
            
            //return (fibonacciNumberAtIndex(phi ^ indexOfFibonacciNumber) - ((-1) ^ indexOfFibonacciNumber) / (phi ^ indexOfFibonacciNumber) / sqrt(5))
            
            return Int( ( pow(Double(phi),Double(indexOfFibonacciNumber)) - ( pow(Double(-1),Double(indexOfFibonacciNumber)) / pow(Double(phi),Double(indexOfFibonacciNumber)) ) ) / sqrt(Double(5)) )
            
            
            
            // calling function inside function is called recursion
            
        }
        
        /*var indexOfFibonacciNumber:Int = 0
        
        func fibonacciNumberAtIndex (indexOfFibonacciNumber:Int) -> Int {
            
            if indexOfFibonacciNumber < 1 {
                return 0
            }
            
            if indexOfFibonacciNumber == 1 {
                return 1
            }
            
            
            return (fibonacciNumberAtIndex(indexOfFibonacciNumber - 2) + fibonacciNumberAtIndex(indexOfFibonacciNumber - 1))
                // calling function inside function is called recursion
        }
        //
        //init(fibonacciNumber:Int) {
        //}
*/
    }
        
    @IBAction func calculateButton(sender: AnyObject) {
        
        let userNumber = inputNumber.text
        
        var adder = FibonacciAdder()
        
        var fibonacciNumber = adder.fibonacciNumberAtIndex(inputNumber.text.toInt()!)
        
        outputLabel.text = String(fibonacciNumber)
    }

}