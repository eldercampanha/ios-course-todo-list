//
//  ViewController.swift
//  todo list
//
//  Created by Elder-label on 2019-05-23.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting this class as responsible for providing data,
        // and manage events from the tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

    // MARK: - UITableViewDelegate, UITableViewDataSource
    
    // How many cells (items) or table view should display
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // Provide Cell (or component) to be displayed on each row of our tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Loading Cell from tableview using the identifier
        // that we set earlier on Main.storyboard : identifier = "Cell"
        return tableView.dequeueReusableCell(withIdentifier: "Cell")!
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // Adding a text to our cell so we can test it
        cell.textLabel?.text = "Cee"
    }

}

