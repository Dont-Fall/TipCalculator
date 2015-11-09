//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jake Ulasevich on 11/8/15.
//  Copyright © 2015 NitroxDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipRateSegmentedControl: UISegmentedControl!
    @IBOutlet weak var billTextField: UITextField!
    @IBAction func calculateTapped(sender: AnyObject) {
        //1. Get total bill
        let userInput = billTextField.text as! NSString
        let totalBill: Float = userInput.floatValue
        //2. Determine the tip rate
        let index: Int = tipRateSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        if index == 0 {
            tipRate = 0.15
        } else if index == 1 {
            tipRate = 0.20
        } else {
            tipRate = 0.25
        }
        //3. Calculate tip
        let tip: Float = totalBill * tipRate
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

