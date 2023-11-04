//
//  Page4.swift
//  dietPlanner
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class Page4: UIViewController {

    var firstname : String = ""
    var age : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = 10
        
    }
    

    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var heightMetric: UISegmentedControl!
    @IBOutlet weak var weightMetric: UISegmentedControl!
    
    var height1 : String = "175"
    var weight1 :String = "70"
    
    
    @IBAction func heightMetricAction(_ sender: Any) {
        if heightMetric.selectedSegmentIndex == 0
        {
            var h = Double(height.text!)
            h = h!/100
            height1 = String(h!)
            
        }else if heightMetric.selectedSegmentIndex == 1
        {
            height1 = height.text!
        }else
        {
            height1 = height.text!
        }
    }
    
    @IBAction func weightMetricAction(_ sender: Any) {
        
        if weightMetric.selectedSegmentIndex == 0
        {
            weight1 = weight.text!
        }else if weightMetric.selectedSegmentIndex == 1
        {
            var h = Double(weight.text!)
            h = (Double(h!)*0.45359237)
            weight1 = String(h!)
        }else
        {
            weight1 = weight.text!
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var bmii : Double
        
        let w = Double(weight1)!
        let h = Double(height1)!
        let hh = h*h
        bmii = Double(w/hh)
        let fname = firstname
        let agenum = age
        let bmmi = String(bmii)
        
        let dest = segue.destination as! Page5
        dest.firstname = fname
        dest.age = agenum
        dest.bmi = bmmi
    }
    
}
