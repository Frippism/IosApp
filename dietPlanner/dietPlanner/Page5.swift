//
//  Page5.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page5: UIViewController {

    var firstname : String = ""
    var age : String = ""
    var bmi : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var catO: UISegmentedControl!
    
    
    var category : String = "veg"
    @IBAction func CatA(_ sender: Any) {
        
        if catO.selectedSegmentIndex == 0
        {
            category = "veg"
        }else if catO.selectedSegmentIndex == 1
        {
            category = "nonveg"
        }else {
            category = "veg"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let fname = firstname
        let agenum = age
        let bmmi = bmi
        let cat = category
        
        let dest = segue.destination as! Page6
        dest.firstname = fname
        dest.age = agenum
        dest.bmi = bmmi
        dest.category = cat
    }
    
}
