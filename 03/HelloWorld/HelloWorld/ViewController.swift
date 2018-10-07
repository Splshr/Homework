//
//  ViewController.swift
//  HelloWorld
//
//  Created by Dmytro Khrystych on 10/6/18.
//  Copyright © 2018 WonderDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Hello, World!"
    }
}

