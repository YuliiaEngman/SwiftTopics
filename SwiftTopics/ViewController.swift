//
//  ViewController.swift
//  SwiftTopics
//
//  Created by Yuliia Engman on 11/12/19.
//  Copyright © 2019 Yuliia Engman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
                       "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
                       "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
                       "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
                       "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count // tells us how many rows to expect
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath) // 1. get a cell - the name should be the same as we named our cell in Identifier
        
        let swiftTopic = swiftTopics[indexPath.row] // 2. get object
        cell.textLabel?.text = swiftTopic // 3. set property for cell
        //cell.detailTextLabel?.text = swiftTopic.description - no need for this particular case
        
        return cell // 4. return
    }
}

