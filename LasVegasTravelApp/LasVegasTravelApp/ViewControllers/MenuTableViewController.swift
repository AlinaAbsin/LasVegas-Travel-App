//
//  MenuTableViewController.swift
//  LasVegasTravelApp
//
//  Created by Yaxin Deng on 5/9/20.
//  Copyright © 2020 Yaxin Deng. All rights reserved.
//

import UIKit
import SafariServices

class MenuTableViewController: UITableViewController {
    
    var types = ["Casino", "Food", "Music Fountain", "Performance", "Scene"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuTableViewCell", for: indexPath) as! MenuTableViewCell
        
        cell.typeLabelOutlet.text = types[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let type = types[indexPath.row]
        var url: String
        
        switch type {
        case "Casino":
            url = "https://saharalasvegas.com/casino"
        case "Food":
            url = "https://www.tripadvisor.com/Restaurants-g45963-Las_Vegas_Nevada.html"
        case "Music Fountain":
            url = "https://bellagio.mgmresorts.com/en/entertainment/fountains-of-bellagio.html"
        case "Performance":
            url = "https://nevadapreservation.org/hhlv2020"
        case "Scene":
            url = "https://lasvegassun.com/ae"
        default:
            url = "https://www.lasvegasnevada.gov"
        }
        
        let safariViewController = SFSafariViewController(url: URL(string: url)!)
        present(safariViewController, animated: true)
    }

}
