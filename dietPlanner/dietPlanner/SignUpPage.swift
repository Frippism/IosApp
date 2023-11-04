//
//  SignUpPage.swift
//  dietPlanner
//
//  Created by Student on 05/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class SignUpPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        signButtonOutlet.layer.cornerRadius = 10
    }
    
    @IBOutlet weak var newusername: UITextField!
    @IBOutlet weak var newpassword: UITextField!
    
    @IBOutlet weak var signButtonOutlet: UIButton!
    
    @IBAction func SignButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "SignupToLogin", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newuname = newusername.text!
        let newpword = newpassword.text!
        let dest = segue.destination as! LoginPage
        dest.nname = newuname
        dest.nword = newpword
    }
}
