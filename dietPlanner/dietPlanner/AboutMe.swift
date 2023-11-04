//
//  AboutMe.swift
//  dietPlanner
//
//  Created by Student on 26/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit

class AboutMe: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let myUrl = URL(string: "https://www.youtube.com/watch?v=yUGo9w5A5xY")
        let request = URLRequest(url: myUrl!)
        web.loadRequest(request)
    }
    @IBOutlet weak var web: UIWebView!
    
    
    var cate : [String] = ["Contacts", "Credits"]
    var con : [String] = ["Youtube : Frippism" , "Instagram : no insta"]
    var cre : [String] = ["Made by : Ayush Tiwari", "Song : Fmab ost"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cate.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return con.count
        }else
        {
            return cre.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellobj = tableView.dequeueReusableCell(withIdentifier: "c1", for: indexPath)
        var val = String()
        
        if indexPath.section == 0
        {
            val = con[indexPath.row]
        }else if indexPath.section == 1
        {
            val = cre[indexPath.row]
        }
        
        cellobj.textLabel?.text = val
        return cellobj
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cate[section]
    }
    
    
}
