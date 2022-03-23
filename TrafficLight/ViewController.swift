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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.25
        yellowLight.alpha = 0.25
        greenLight.alpha = 0.25
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        controlButton.layer.cornerRadius = 10
    }


}

