//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр Зинин on 03.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redTrafficLight: UIView!
    @IBOutlet weak var yellowTrafficLight: UIView!
    @IBOutlet weak var greenTrafficLight: UIView!
    @IBOutlet weak var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.size.width / 2
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.size.width / 2
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.size.width / 2
        greenTrafficLight.alpha = 0.3
        trafficLightButton.layer.cornerRadius = 15
    }
    @IBAction func trafficLightButtonDidTapped() {

        if trafficLightButton.title(for: .normal) == "START" {
            redTrafficLight.alpha = 1
            trafficLightButton.setTitle("NEXT", for: .normal)
        } else if redTrafficLight.alpha == 1 {
            redTrafficLight.alpha = 0.3
            yellowTrafficLight.alpha = 1
        } else if yellowTrafficLight.alpha == 1 {
            yellowTrafficLight.alpha = 0.3
            greenTrafficLight.alpha = 1
        } else {
            greenTrafficLight.alpha = 0.3
            redTrafficLight.alpha = 1
        }
    }
}

