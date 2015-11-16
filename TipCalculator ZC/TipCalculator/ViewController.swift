//
//  ViewController.swift
//  TipCalculator
//
//  Created by Zack Cuomo on 11/15/15.
//  Copyright (c) 2015 ZackCuomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipRateSegmentedControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func calculateTapped(sender: AnyObject) {
        //Im not retarded
        //I can make comments
        //Bye
        var userInput = billTextField.text as NSString
        var totalBill: Float = userInput.floatValue
        var index: Int = tipRateSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        if index == 0{
            tipRate = 0.15
        }
        else if index == 1{
            tipRate = 0.20
        }
        else{
            tipRate = 0.25
        }
        
        var tip: Float = totalBill * tipRate
        
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

