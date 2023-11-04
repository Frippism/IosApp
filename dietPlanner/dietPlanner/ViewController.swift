//
//  ViewController.swift
//  dietPlanner
//
//  Created by Student on 05/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoginButtonOutlet.layer.cornerRadius = 20
        SignUpButtonOutlet.layer.cornerRadius = 20
    }


    
    @IBOutlet weak var LoginButtonOutlet: UIButton!
    @IBOutlet weak var SignUpButtonOutlet: UIButton!
    
    
}

