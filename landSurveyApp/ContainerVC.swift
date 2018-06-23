//
//  ViewController.swift
//  landSurveyApp
//
//  Created by Jay Letheby on 27/5/18.
//  Copyright © 2018 Jay Letheby solutions. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
    @objc func toggleSideMenu() {
        
        if sideMenuOpen {
            // close side menu
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        } else {
            // open side menu
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

