//
//  LoginPage.swift
//  dietPlanner
//
//  Created by Student on 05/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {
    var nname : String = ""
    var nword : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logButtonOutlet.layer.cornerRadius = 10
    }
    

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var logButtonOutlet: UIButton!
    
    
    @IBAction func LogButtonAction(_ sender: Any) {
        
        if username.text == "ayush" && password.text == "ayush"
        {
            performSegue(withIdentifier: "LoginToPage1", sender: nil)
        }
        else if username.text == "kunal" && password.text == "kunal"
        {
            performSegue(withIdentifier: "LoginToPage1", sender: nil)
        }
        else if username.text == nname && password.text == nword
        {
            performSegue(withIdentifier: "LoginToPage1", sender: nil)
        }
        else
        {
            let actionSheet = UIAlertController(title: "Wrong", message: "Password or username entered is incorrect", preferredStyle: UIAlertController.Style.actionSheet)
            actionSheet.addAction(UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: nil))
            present(actionSheet, animated: true, completion: nil)
        }
        
        
        
    }
}
