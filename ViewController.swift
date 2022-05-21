//
//  ViewController.swift
//  TConverter
//
//  Created by Alexey Khilo on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet{
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 0
    }
}
    @IBAction func sliderValueChanges(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
}

