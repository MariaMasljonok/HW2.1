//
//  ViewController.swift
//  HW2.1
//
//  Created by Maria Masljonok on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stopLight: UIView!
    @IBOutlet var warningLight: UIView!
    @IBOutlet var goLight: UIView!
    
    @IBOutlet var workTrafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopLight.layer.cornerRadius = 65
        warningLight.layer.cornerRadius = 65
        goLight.layer.cornerRadius = 65
        
        workTrafficLightButton.layer.cornerRadius = 10
        
        stopLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
    }
    @IBAction func workTrafficLightButtonPressed() {

        if stopLight.alpha != 1 {
            stopLight.backgroundColor = .systemRed
            warningLight.alpha = 0.3
            goLight.alpha = 0.3
            workTrafficLightButton.setTitle("NEXT", for: .normal)
        } else if warningLight.alpha != 1 {
            warningLight.backgroundColor = UIColor.yellow.withAlphaComponent(1)
            stopLight.alpha = 0
            goLight.alpha = 0.3
            workTrafficLightButton.setTitle("NEXT", for: .highlighted)
        } else if stopLight.alpha == 0 {
            warningLight.alpha = 0
            goLight.backgroundColor = UIColor.systemGreen.withAlphaComponent(1)
        }
    }
    
}



