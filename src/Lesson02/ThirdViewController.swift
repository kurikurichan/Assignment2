//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//


import UIKit

class ThirdViewController: UIViewController {
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    
    
    @IBOutlet weak var numberInputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func determineEvenness(sender: AnyObject) {
    if numberInputTextField.text.toInt()! % 2 == 0 {
    outputLabel.text = "even"
    } else {
    outputLabel.text = "odd"
    }
    
    
    }
    
    }
    */
    
    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func calculateButton(sender: AnyObject) {
        if inputNumber.text.toInt()! % 2 == 0 {
            outputLabel.text = "even"
        } else {
            outputLabel.text = "odd"
        }
        
        
    }
    
}