//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var calculator=CalculatorBrain()
    var showingBmi:String=""
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    
    @IBOutlet var weightLable: UILabel!
    
    @IBOutlet var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text=String(format: "%.2fm", sender.value)
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        
        weightLable.text=String(format: "%.0fkg", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height=heightSlider.value
        let weight=weightSlider.value
        calculator.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"
        {
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.bmiValue=calculator.getBMIValue()
            destinationVC.advice=calculator.returnAdvice()
            destinationVC.color=calculator.returnColor()
        }
    }
}

