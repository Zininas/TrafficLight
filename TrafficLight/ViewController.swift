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
    
    private let signalIsOn = 1.0
    private let signalIsOff = 0.3
    
    private var tapCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.height / 2
        
        redTrafficLight.alpha = signalIsOff
        yellowTrafficLight.alpha = signalIsOff
        greenTrafficLight.alpha = signalIsOff
        
        trafficLightButton.layer.cornerRadius = 15
    }
    @IBAction func trafficLightButtonDidTapped() {
        if trafficLightButton.title(for: .normal) == "START" {

            trafficLightButton.setTitle("NEXT", for: .normal)
            }
        
        tapCount += 1

        switch tapCount {
        case 1,4,7,10:
            redTrafficLight.alpha = signalIsOn
            greenTrafficLight.alpha = signalIsOff
        case 2,5,8,11:
            redTrafficLight.alpha = signalIsOff
            yellowTrafficLight.alpha = signalIsOn
        case 3,6,9,12:
            yellowTrafficLight.alpha = signalIsOff
            greenTrafficLight.alpha = signalIsOn
        default:
            break
        }

    }
}

