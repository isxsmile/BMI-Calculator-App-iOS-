//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shaik Ismail on 18/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    @IBOutlet var AdviceText: UILabel!
    
    @IBOutlet var BmiDisplay: UILabel!
    
 
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BmiDisplay.text=bmiValue
        AdviceText.text=advice
        view.backgroundColor=color
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
