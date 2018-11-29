//
//  ViewController.swift
//  tololist
//
//  Created by Crispin Ganew on 2018-11-29.
//  Copyright © 2018 com.christ. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Display Item 1","displayitem 2","dispalyitem3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //MARK - DISPLAYING DATA IN TABLE VIEW.
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thisismyidentifier", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TABLEVIEW DELEGATE METHODS
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true) // this stop the hightlight of a row when selected.
    }

}

