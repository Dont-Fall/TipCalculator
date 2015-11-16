//
//  ViewController.swift
//  TipCalculator
//
//  Created by Christopher Frost on 11/12/15.
//  Copyright (c) 2015 ChristopherWFrost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipRateSegmentedControl: UISegmentedControl!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBAction func calculateTapped(sender: AnyObject) {
        //1. Get the total bill
        var userInput = billTextField.text as NSString
        var totalBill: Float = userInput.floatValue
        //2. Determine the tip rate
        var index: Int = tipRateSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        
        if index == 0 {
            tipRate = 0.15
        }else if index == 1{
            tipRate = 0.20
        }else{
            tipRate = 0.25
        }
        //3. Calculate the tip
        var tip: Float = totalBill * tipRate
        //4. Display the tip
        tipLabel.text = "$\(tip)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

