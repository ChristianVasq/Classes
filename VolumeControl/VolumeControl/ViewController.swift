//
//  ViewController.swift
//  VolumeControl
//
//  Created by Adi & Christian on 11/7/19.
//  Copyright © 2019 Adi & Christian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        onSwitch.setOn(false, animated: true)
        volSlider.value = 0
    }

    @IBOutlet weak var onSwitch: UISwitch!
    
    
    @IBOutlet weak var volSlider: UISlider!
    
    
    @IBOutlet weak var volume: UILabel!
    
    
    
    @IBAction func changeVol(_ sender: Any) {
        
        if onSwitch.isOn {
            
            let value = Int(volSlider.value * 10.0)
            volume.text = "\(value)"
            
        
    }
    
}

}
