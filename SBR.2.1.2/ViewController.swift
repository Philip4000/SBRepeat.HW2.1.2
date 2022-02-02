//
//  ViewController.swift
//  SBR.2.1.2
//
//  Created by Philip Noskov on 07.01.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOff: CGFloat = 0.3
    private var lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cornerRadiusValue = redColorView.frame.height / 2
        
        redColorView.layer.cornerRadius = cornerRadiusValue
        yellowColorView.layer.cornerRadius = cornerRadiusValue
        greenColorView.layer.cornerRadius = cornerRadiusValue
        
        startButton.layer.cornerRadius = 10
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
        startButton.setTitle("START", for: .normal)
    
    }

    @IBAction func startButtonPressed() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
   
        
        switch currentLight {
        case .red:
            redColorView.alpha = lightIsOn
            greenColorView.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowColorView.alpha = lightIsOn
            redColorView.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenColorView.alpha = lightIsOn
            yellowColorView.alpha = lightIsOff
            currentLight = .red
        }
        
    }

}
