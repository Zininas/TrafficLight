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
    
    @IBOutlet weak var startButton: UIButton!
    
    private var curentLight = CurentLight.red
    private let signalIsOn = 1.0
    private let signalIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        
        redTrafficLight.alpha = signalIsOff
        yellowTrafficLight.alpha = signalIsOff
        greenTrafficLight.alpha = signalIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.height / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.height / 2
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
            }

        switch curentLight {
        case .red:
            redTrafficLight.alpha = signalIsOn
            greenTrafficLight.alpha = signalIsOff
            curentLight = .yellow
        case .yellow:
            redTrafficLight.alpha = signalIsOff
            yellowTrafficLight.alpha = signalIsOn
            curentLight = .green
        case .green:
            yellowTrafficLight.alpha = signalIsOff
            greenTrafficLight.alpha = signalIsOn
            curentLight = .red
        }
    }
}
// MARK: - CurentLight
extension ViewController {
    private enum CurentLight {
        case red, yellow, green
    }
}

