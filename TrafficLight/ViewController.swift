//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Барсук on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var controlButton: UIButton!
    
    let turnedOnAlpha = 1.0
    let turnedOffAlpha = 0.25
    var currentColor = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = turnedOffAlpha
        yellowLight.alpha = turnedOffAlpha
        greenLight.alpha = turnedOffAlpha
        
        controlButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }

    @IBAction func switchColor() {
        switch currentColor {
        case "red":
            currentColor = "yellow"
            redLight.alpha = turnedOffAlpha
            yellowLight.alpha = turnedOnAlpha
        case "yellow":
            currentColor = "green"
            yellowLight.alpha = turnedOffAlpha
            greenLight.alpha = turnedOnAlpha
        case "green":
            currentColor = "red"
            greenLight.alpha = turnedOffAlpha
            redLight.alpha = turnedOnAlpha
        default:
            currentColor = "red"
            redLight.alpha = turnedOnAlpha
            controlButton.setTitle("NEXT", for: .normal)
        }
    }
    

}

