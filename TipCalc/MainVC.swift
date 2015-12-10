//
//  MainVC.swift
//  TipCalc
//
//  Created by Kaeleb Rocha on 12/1/15.
//  Copyright © 2015 Kaeleb Rocha. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var subtotalEntry: UITextField!
    @IBOutlet weak var percFromSlider: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var numOfPeople: UITextField!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var perPersonText: UILabel!
    @IBOutlet weak var startOver: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        subtotalEntry.delegate = self
        numOfPeople.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sliderChanged(sender: UISlider) {
    
        // set value of slider
        let currentValue = Int(sliderValue.value)
        
        // update text with value
        percFromSlider.text = "\(currentValue)%"
    
    }
    
    @IBAction func calculateTipPresssed(sender: AnyObject) {
        
        // check that fields are populated
        if subtotalEntry.text == nil {
            subtotalEntry.text = "0.00"
        }
        
        if numOfPeople.text == nil {
            numOfPeople.text = "1"
        }
        
        let subtotal = Float(subtotalEntry.text!)
        let split = Float(numOfPeople.text!)
        let perc = Int(sliderValue.value)
        
        // perform calculation
        tipPerPerson.text = "$" + String(subtotal! * (Float(perc)/100) / split!)
        
        // unhide
        tipPerPerson.hidden = false
        perPersonText.hidden = false
        startOver.hidden = false
        
        // resign the keyboards
        subtotalEntry.resignFirstResponder()
        numOfPeople.resignFirstResponder()
    
    }
    
    @IBAction func startOverPressed(sender: AnyObject) {
    
        // restore app settings
        tipPerPerson.hidden = true
        perPersonText.hidden = true
        startOver.hidden = true
        subtotalEntry.text = nil
        sliderValue.value = 20
        percFromSlider.text = "20%"
        numOfPeople.text = nil
        tipPerPerson.text = nil
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        subtotalEntry.resignFirstResponder()
        numOfPeople.resignFirstResponder()
        return true
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    }
    
}
