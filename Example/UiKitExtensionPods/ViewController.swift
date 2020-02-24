//
//  ViewController.swift
//  UiKitExtensionPods
//
//  Created by Rajeswarip1203 on 02/24/2020.
//  Copyright (c) 2020 Rajeswarip1203. All rights reserved.
//

import UIKit
import Foundation
import UiKitExtensionPods

class ViewController: UIViewController {
    let testLable = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        testLable.text = "Welcome to UiKitExtension"
        testLable.backgroundColor = UIColor.systemBlue
        testLable.textColor = UIColor.black
        self.view.addSubview(testLable)
        testLable.pinCenterX(to: self.view)
        testLable.pinCenterY(to: self.view)
        testLable.pinToSuperviewTop(constant: 400)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

