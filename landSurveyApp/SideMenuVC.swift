//
//  SideMenuVC.swift
//  landSurveyApp
//
//  Created by Jay Letheby on 27/5/18.
//  Copyright © 2018 Jay Letheby solutions. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0:NotificationCenter.default.post(name: NSNotification.Name("ShowLengthConversion"), object: nil)
        case 1:NotificationCenter.default.post(name: NSNotification.Name("ShowAreaConversion"), object: nil)
        case 2:NotificationCenter.default.post(name: NSNotification.Name("ShowDecimalAngleConversion"), object: nil)
        default:break
            
        }
    }

}
