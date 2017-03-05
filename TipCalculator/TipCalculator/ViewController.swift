//
//  ViewController.swift
//  TipCalculator
//
//  Created by apple on 3/4/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TapAction(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTips(_ sender: AnyObject) {
        var rateText = String(percentage.titleForSegment(at: percentage.selectedSegmentIndex) ?? "0")

        let start = rateText?.startIndex
        let end = rateText?.index((rateText?.endIndex)!, offsetBy: -1)
        
        rateText = rateText?.substring(with: start! ..< end!)

        let rate = Double(rateText!)!/100
        let bill = Double(billValue.text!) ?? 0
        
        let tip = bill * rate
        let total = bill + tip
        tipLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format:"$%.2f",total)
        
        
    }

}

