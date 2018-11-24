//
//  ViewController.swift
//  Swift Alternate Icons Example
//
//  Created by Hayden Watson on 11/23/18.
//  Copyright © 2018 Hayden Watson. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath {
        case [0,1]: changeIcon(name: "B") // Change App Icon to B.
        case [0,2]: changeIcon(name: "C")
        default: changeIcon(name: nil) //Set the icon name to nil, it will display its primary icon.
        }
    }
    
    func changeIcon(name: String?) {
        //Check if the app supports alternating icons
        guard UIApplication.shared.supportsAlternateIcons else {
            return;
        }
        //Change the icon to a specific image with given name
        UIApplication.shared.setAlternateIconName(name) { (error) in
            //After app icon changed, print our error or success message
            if error != nil {
                print(error?.localizedDescription ?? "App Icon Error")
            }
        }
    }

}

