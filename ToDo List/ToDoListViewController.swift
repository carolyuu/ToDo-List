//
//  ViewController.swift
//  ToDo List
//
//  Created by Carol Yu on 2/17/22.
//

import UIKit

class ToDoListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var toDoArray = ["Learn Swift", "Build Apps", "Change the wrold", "Take a Vacation"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.datasource = self
        
    }


}

extension ToDoListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection was just called. Return \(toDoArray.count)")
        return toDoArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt was jsut called for indexPath.row = \(indexPath.row) which is the cell containing \(toDoArray[indexPath.row])")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) // set upreusable cell
        cell.textLabel?.text = toDoArray[indexPath.row] // put data inside label in cell
        return cell
    }
    
    
    
}
