//
//  SettingsViewController.swift
//  Planets
//
//  Created by William Chen on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    //Mark: - IBOutlets
    @IBOutlet weak var label: UILabel!
    
    //Mark: - View Lifecycle
    //Mark: - Actions
    
    
    
    @IBAction func shouldSwitch(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldSwitchPluto)
        
    }
    
    //MARK: - Private
    
    private func updateViews(){
        let userDefaults = UserDefaults.standard
        shouldSwitch.isOn = userDefaults.bool(forKey: .shouldSwitchPluto)
    }
    
    
    

}
