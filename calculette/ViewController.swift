//
//  ViewController.swift
//  calculette
//
//  Created by Thomas Millet on 26/11/2018.
//  Copyright © 2018 Thomas Millet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var TextField: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var digit : String = ""
    @IBAction func btnClicked(_ sender: UIButton)
    {
        
        digit += String((sender.titleLabel?.text)!)
        
            print(digit)
        TextField.text = "Coucou"
       
        
    }
    
    
}

