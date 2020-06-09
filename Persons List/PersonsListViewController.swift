//
//  ViewController.swift
//  Persons List
//
//  Created by Александр Умаров on 09.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {

    
    var personsList = Person.getPersonsList()
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
        print(personsList)
       }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        cell.textLabel?.text = personsList[indexPath.row].fullname


        return cell
    }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if segue.identifier == "showDetails" {
            let personDetails = segue.destination as? PersonDetailsViewController
            personDetails?.person = personsList[indexPath.row]
        }
    }
}




