//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by apple on 3/4/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var backgroudColor: UISegmentedControl!
    @IBOutlet weak var defaultTip: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewControllers = self.navigationController?.viewControllers
        let vc = viewControllers?[0] as! ViewController
        defaultTip.selectedSegmentIndex = vc.percentage.selectedSegmentIndex
        if(vc.view.backgroundColor == UIColor.green){
            backgroudColor.selectedSegmentIndex = 1
        }
        else{
            backgroudColor.selectedSegmentIndex = 0

        }

        // Do any additional setup after loading the view.
    }
    @IBAction func setDefaultRate(_ sender: AnyObject) {
        let viewControllers = self.navigationController?.viewControllers
        let vc = viewControllers?[0] as! ViewController
        vc.percentage.selectedSegmentIndex = defaultTip.selectedSegmentIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setColor(_ sender: Any) {
        let viewControllers = self.navigationController?.viewControllers
        let vc = viewControllers?[0] as! ViewController
        if(backgroudColor.selectedSegmentIndex == 0){
            vc.view.backgroundColor = UIColor.white
        }
        else{
            vc.view.backgroundColor = UIColor.green
        }

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
