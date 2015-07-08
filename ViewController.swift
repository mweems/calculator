//
//  ViewController.swift
//  Calculator
//
//  Created by Matt Weems on 21/04/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var calcLabel: UILabel!
    
    
    
    @IBAction func numButtonPressed(sender: UIButton) {
        let digit = sender.currentTitle!
        answerLabel.text = answerLabel.text! + digit
    }
    

    
    @IBAction func operandButtonPressed(sender: UIButton) {
        let operand = sender.currentTitle!
        calcLabel.text = calcLabel.text! + answerLabel.text! + " \(operand) "
        answerLabel.text = ""
    }
    
    @IBAction func clearButtonPressed() {
        answerLabel.text = ""
        calcLabel.text = ""
    }
    
    @IBAction func equalButtonPressed() {
    }
}

