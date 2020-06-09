//
//  PersonDetailsViewController.swift
//  Persons List
//
//  Created by Александр Умаров on 09.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person?
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.title = person?.fullname ?? "nil"
    }
    

}
