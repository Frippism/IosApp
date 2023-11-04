//
//  Page2.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NextButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var FirstName: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstnamee = FirstName.text!
        let dest = segue.destination as! Page3
        dest.firstname = firstnamee
    }
    

}
