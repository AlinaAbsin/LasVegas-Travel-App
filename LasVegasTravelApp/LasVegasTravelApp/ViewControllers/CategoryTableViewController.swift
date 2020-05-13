//
//  CategoryTableViewController.swift
//  LasVegasTravelApp
//
//  Created by Yaxin Deng on 5/10/20.
//  Copyright © 2020 Yaxin Deng. All rights reserved.
//

import UIKit
import SafariServices

class CategoryTableViewController: UITableViewController {
    
    var categories = ["Hotel", "Restaurant", "Casino", "Performance", "Music Fountain"]
    var category = String()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryTableViewCell", for: indexPath) as! CategoryTableViewCell
        
        cell.categoryLabelOutlet.text = categories[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        category = categories[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let destinationViewController = segue.destination as! SpecificCategoryTableViewController
            destinationViewController.category = category
        }
    }
    
}
