//
//  ViewController.swift
//  tippy
//
//  Created by Alan Rodriguez on 1/30/20.
//  Copyright © 2020 Alan Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControler: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTap(_ sender: Any) {
        
        
        print("HELLO THERE ")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tiPercentages = [0.15,0.18, 0.2]
        
        let tip = bill * tiPercentages[tipControler.selectedSegmentIndex]
        
        // Update the tip and total label
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", bill + tip)
    }
}

