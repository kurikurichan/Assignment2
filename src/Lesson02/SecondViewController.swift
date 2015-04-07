//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

// step 1: link up input number & the output label to class
// step 2: create the function addButton
// step 3: addButton will define inputNumber and outputLabel

class SecondViewController: UIViewController {

    var runningTotal = 0
    
    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func addButton(sender: AnyObject) {
        
        let addition = inputNumber.text
        
        if let intValue = addition.toInt() {
            
            runningTotal += intValue
            
            outputLabel.text = String(runningTotal)
            
        }
        
        else {
            
            inputNumber.text = "Please input a number"
        }
        
        
    }
    
    // want to record (return) each time the user puts a number into the box
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}
