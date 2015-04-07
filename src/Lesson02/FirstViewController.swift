//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
   // @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var outputLabel2: UILabel!
    
    @IBAction func Button(sender: AnyObject) {
        let helloWorld = "hello world!"
        outputLabel.text = "\(helloWorld)"
    }
    
    @IBOutlet weak var nameBox: UITextField!
    
    @IBOutlet weak var ageBox: UITextField!
    
    @IBAction func Button2(sender: AnyObject) {
        
        let name = nameBox.text
        let age = ageBox.text
        outputLabel2.text = "Hello \(name), you are \(age) years old!"
    }
    
    
    @IBOutlet weak var outputLabel3: UILabel!
    
    @IBAction func Button3(sender: AnyObject) {
        
        let name = nameBox.text
        let age = ageBox.text
        if age.toInt() > 20 {
                outputLabel3.text = "You can drink"
            } else if age.toInt() > 17 {
                outputLabel3.text = "You can vote"
            } else if age.toInt() > 15 {
                outputLabel3.text = "You can drive"
            }
        
    }
    
    @IBOutlet weak var outputLabel4: UILabel!
    
    
    @IBAction func Button4(sender: AnyObject) {
        
        let name = nameBox.text
        let age = ageBox.text
        if age.toInt() > 20 {
            outputLabel4.text = "you can drive, vote and drink (but not at the same time!)"
        } else if age.toInt() > 17 {
            outputLabel4.text = "You can drive and vote"
        } else if age.toInt() > 15 {
            outputLabel4.text = "You can drive"
        }
    }
}
