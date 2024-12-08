//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Zaman Kazimov on 08.12.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // overrideUserInterfaceStyle = .light

    }


    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = .white
        } else {
            changeButton.tintColor = .blue
        }
    }


}

