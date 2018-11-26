//
//  ViewController.swift
//  calculette
//
//  Created by Thomas Millet on 26/11/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var currentDigit : Double = 0.0
    var previousDigit : Double = 0.0
    var result :Double = 0.0
    var operation : String = ""
    var isTypingNumber = false
    
    
    // Update le digit
    @IBAction func btnClicked(_ sender: UIButton)
    {
        currentDigit = (currentDigit * 10) + Double((sender.titleLabel?.text)!)!
        Label.text = String(currentDigit)
        print(currentDigit)
    }
    
    // Mettre la calculette à zéro
    @IBAction func btnInit(_ sender: Any) {
        Label.text = ""
        currentDigit = 0
    }
    
    // Operation
    
    @IBAction func add(_ sender: Any)
    {
        previousDigit += currentDigit
        currentDigit = 0
        operation = "Addition"
        print(operation)
    }
    
    // Soustraction
    
    @IBAction func sub(_ sender: Any)
    {
        previousDigit += currentDigit
        currentDigit = 0
        operation = "Soustraction"
        print(operation)
    }
    
    // Multiplication
    
    @IBAction func multi(_ sender: Any)
    {
        previousDigit += currentDigit
        currentDigit = 0
        operation = "Multiplication"
        print(operation)
    }
    
    //Resultat
    @IBAction func result(_ sender: Any) {
        if (operation == "Addition"){
            result = previousDigit + currentDigit
        }
        if (operation == "Soustraction"){
            result = previousDigit - currentDigit
        }
        if (operation == "Multiplication"){
            result = previousDigit * currentDigit
        }
       Label.text = String(result)
    }
}

