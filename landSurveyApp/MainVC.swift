//
//  MainVC.swift
//  landSurveyApp
//
//  Created by Jay Letheby on 28/5/18.
//  Copyright © 2018 Jay Letheby solutions. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showLengthConversion),
                                               name: NSNotification.Name("ShowLengthConversion"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showAreaConversion),
                                               name: NSNotification.Name("ShowAreaConversion"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDecimalAngleConversion),
                                               name: NSNotification.Name("ShowDecimalAngleConversion"),
                                               object: nil)
    }
    
    @objc func showLengthConversion() {
        performSegue(withIdentifier: "ShowLengthConversion", sender: nil)
    }

    @objc func showAreaConversion() {
        performSegue(withIdentifier: "ShowAreaConversion", sender: nil)
    }

    @objc func showDecimalAngleConversion() {
        performSegue(withIdentifier: "ShowDecimalAngleConversion", sender: nil)
    }
    
    @IBAction func onMoreTapped() {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
