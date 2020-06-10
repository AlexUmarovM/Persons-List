//
//  PersonSectionsTableViewController.swift
//  Persons List
//
//  Created by Александр Умаров on 09.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class PersonSectionsTableViewController: UITableViewController {
    
    var personSection = Person.getPersonsList()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return personSection.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personSection[section].fullname
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = personSection[indexPath.section].phone}
        else {cell.textLabel?.text = personSection[indexPath.section].email}
        
        return cell
    }
    
}
