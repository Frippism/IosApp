//
//  Page6.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page6: UIViewController {

    var firstname : String = ""
    var age : String = ""
    var bmi : String = ""
    var category : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 10
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let fname = firstname
        let agenum = age
        let bmmi = bmi
        let cat = category
        
        let dest = segue.destination as! FinalPage
        dest.firstname = fname
        dest.age = agenum
        dest.bmi = bmmi
        dest.category = cat
        
    }

}
