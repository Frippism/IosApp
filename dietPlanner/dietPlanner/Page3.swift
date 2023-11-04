//
//  Page3.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page3: UIViewController {

    
    var firstname : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        NextButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        
    }
    

    
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var ageOutlet: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let agenum = ageOutlet.text
        let frisnamee = firstname
        let dest = segue.destination as! Page4
        dest.firstname = frisnamee
        dest.age = agenum!
        
    }
    
    
}
