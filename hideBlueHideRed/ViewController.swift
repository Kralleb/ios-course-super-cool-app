//
//  ViewController.swift
//  hideBlueHideRed
//
//  Created by Kaeleb Rocha on 12/8/15.
//  Copyright © 2015 Kaeleb Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueBg: UIImageView!
    @IBOutlet weak var redBg: UIImageView!
    @IBOutlet weak var showRedButton: UIButton!
    @IBOutlet weak var showBlueButton: UIButton!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showRedButtonPressed(sender: AnyObject) {
        
        showBlueButton.hidden = false
        showRedButton.hidden = true
        redBg.hidden = false
        blueBg.hidden = true
        
    }
    @IBAction func showBlueButtonPressed(sender: AnyObject) {
        
        showBlueButton.hidden = true
        showRedButton.hidden = false
        redBg.hidden = true
        blueBg.hidden = false
        
    }


}

