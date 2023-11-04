//
//  Page1.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        nextButtonOutlet.layer.cornerRadius = 10
    }
    

    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    @IBAction func nextButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "page1ToPage2", sender: nil)
    }
    
}
