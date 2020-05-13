//
//  SpecificCategoryTableViewController.swift
//  LasVegasTravelApp
//
//  Created by Yaxin Deng on 5/10/20.
//  Copyright © 2020 Yaxin Deng. All rights reserved.
//

import UIKit

class SpecificCategoryTableViewController: UITableViewController {
    
    var category = String()
    var specificCategory = [Category]()
    var searchResults = [Category]()
    
    @IBOutlet var specificCategoryTableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadspecificCategory()
        searchResults = specificCategory
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "specificCategoryTableViewCell", for: indexPath) as! SpecificCategoryTableViewCell
        
        cell.imageOutlet.image = UIImage(named: searchResults[indexPath.row].imageName)
        cell.descriptionOutlet.text = searchResults[indexPath.row].description
        cell.descriptionOutlet.numberOfLines = 0

        return cell
    }
    
    private func loadspecificCategory() {
        switch category {
        case "Hotel":
            loadHotels()
        case "Restaurant":
            loadRestaurants()
        case "Casino":
            loadCasinos()
        case "Performance":
            loadPerformances()
        case "Music Fountain":
            loadMusicFountains()
        default:
            break
        }
    }
    
    private func loadCasinos() {
        let casinoImageName1 = "BellagioCasino.jpg"
        let casinoDescription1 = "Fronted by an 8-acre lake with dancing water fountains, this luxury casino resort on The Strip is 2 miles from McCarran International Airport."
        specificCategory.append(Category(imageName: casinoImageName1, description: casinoDescription1))
        
        let casinoImageName2 = "CaesarsPalaceCasino.jpg"
        let casinoDescription2 = "Set in a sprawling complex of Roman-themed buildings along the busting Las Vegas Strip, this iconic casino hotel is a mile from I-15 and 14 miles from Rio Secco Golf Club."
        specificCategory.append(Category(imageName: casinoImageName2, description: casinoDescription2))
        
        let casinoImageName3 = "StratosphereCasino.jpg"
        let casinoDescription3 = "On the north end of the Strip, this landmark casino hotel with a 1,149-foot observation tower is 2 miles from the Fremont Street Experience and a 9-minute walk from the Las Vegas Monorail SLS Station."
        specificCategory.append(Category(imageName: casinoImageName3, description: casinoDescription3))
        
        let casinoImageName4 = "WestgateCasino.jpg"
        let casinoDescription4 = "Opposite the Las Vegas Convention Center, this modern casino on the Las Vegas Monorail route is a block from the Las Vegas Strip and 3.5 miles from McCarran International Airport."
        specificCategory.append(Category(imageName: casinoImageName4, description: casinoDescription4))
    }
    
    private func loadHotels() {
        let hotelImageName1 = "BellagioHotel.jpg"
        let hotelDescription1 = "Bellagio Hotel has a restaurant, fitness center, a bar and casino in Las Vegas. The nearest airport is McCarran International, 3.3 miles from the accommodation, and the property offers a paid airport shuttle service.The Shops at City Center are a short walk from the property."
        specificCategory.append(Category(imageName: hotelImageName1, description: hotelDescription1))
        
        let hotelImageName2 = "MandalayBayHotel.jpg"
        let hotelDescription2 = "Mandalay Bay is located in the Las Vegas Strip of Las Vegas. This 5-star hotel offers an ATM and a concierge service. The property provides a 24-hour front desk, room service and organizing tours for guests."
        specificCategory.append(Category(imageName: hotelImageName2, description: hotelDescription2))
        
        let hotelImageName3 = "SecretSuites.jpg"
        let hotelDescription3 = "Located on the north end of the Las Vegas Strip, this hotel is a 10-minute walk from area casinos. A steam room and beauty treatments are available at eforea: spa at Hilton."
        specificCategory.append(Category(imageName: hotelImageName3, description: hotelDescription3))
        
        let hotelImageName4 = "VdaraHotel.jpg"
        let hotelDescription4 = "Located in Las Vegas, a 13-minute walk from Eiffel Tower at Paris Hotel, it features a bar and views of the city; a 24-hour front desk, this property also welcomes guests with a restaurant, a casino and a sun terrace."
        specificCategory.append(Category(imageName: hotelImageName4, description: hotelDescription4))
        
        let hotelImageName5 = "WaldorfAstoriaHotel.jpg"
        let hotelDescription5 = "Located central on the Las Vegas Strip, this modern hotel offers an extensive two-floor spa with 5-star treatments and a modern gym with a yoga room. Views of the Las Vegas Strip or the the city are available in all rooms at Waldorf Astoria Las Vegas."
        specificCategory.append(Category(imageName: hotelImageName5, description: hotelDescription5))
    }
    
    private func loadRestaurants() {
        let restaurantImageName1 = "ArawanThaiBistroAndDessert.jpg"
        let restaurantDescription1 = "Vegetarian Friendly, Vegan Options, Gluten Free Options"
        specificCategory.append(Category(imageName: restaurantImageName1, description: restaurantDescription1))
        
        let restaurantImageName2 = "CarsonKitchen.jpg"
        let restaurantDescription2 = "Vegetarian Friendly, Vegan Options, Gluten Free Options"
        specificCategory.append(Category(imageName: restaurantImageName2, description: restaurantDescription2))
        
        let restaurantImageName3 = "ChinChin.jpg"
        let restaurantDescription3 = "Vegetarian Friendly, Vegan Options, Gluten Free Options"
        specificCategory.append(Category(imageName: restaurantImageName3, description: restaurantDescription3))
        
        let restaurantImageName4 = "Joe'sSeafood, Prime Steak & Stone Crab.jpg"
        let restaurantDescription4 = "Vegetarian Friendly, Gluten Free Options"
        specificCategory.append(Category(imageName: restaurantImageName4, description: restaurantDescription4))
        
        let restaurantImageName5 = "LeCirque.jpg"
        let restaurantDescription5 = "Osetra caviar trio: smoked salmon rillette, vodka cream, Cappellini, poached quail egg, shiso, lemon vinaigrette, Kumomoto oyster, granny smith apple, lemon verbena mousse"
        specificCategory.append(Category(imageName: restaurantImageName5, description: restaurantDescription5))
        
        let restaurantImageName6 = "TripleGeorgeGrill.jpg"
        let restaurantDescription6 = "Vegetarian Friendly, Vegan Options, Gluten Free Options"
        specificCategory.append(Category(imageName: restaurantImageName6, description: restaurantDescription6))
    }
    
    private func loadPerformances() {
        let performanceImageName1 = "BlueMan.jpg"
        let performanceDescription1 = "Comic musical & artistic show featuring lots of audience interaction with the blue-painted cast."
        specificCategory.append(Category(imageName: performanceImageName1, description: performanceDescription1))
        
        let performanceImageName2 = "KAShow.jpg"
        let performanceDescription2 = "Kà is a show by Cirque du Soleil at the MGM Grand in Las Vegas, Nevada. Kà describes the story as 'the coming of age of a young man and a young woman through their encounters with love, conflict and the duality of Kà, the fire that can unite or separate, destroy or illuminate.'"
        specificCategory.append(Category(imageName: performanceImageName2, description: performanceDescription2))
        
        let performanceImageName3 = "Luzia.jpg"
        let performanceDescription3 = "Luzia is a Cirque du Soleil show inspired by the richness of the Mexican culture. The name Luzia fuses the sound of luz and lluvia, two elements at the core of the show’s creation."
        specificCategory.append(Category(imageName: performanceImageName3, description: performanceDescription3))
        
        let performanceImageName4 = "MagicShow.jpg"
        let performanceDescription4 = "He’s made the Statue of Liberty disappear, walked through the Great Wall of China and made a jetliner vanish — David Copperfield has done things other illusionists can only dream of. Performed Magic to the Las Vegas Strip with his show at the MGM Grand David Copperfield Theatre. "
        specificCategory.append(Category(imageName: performanceImageName4, description: performanceDescription4))
    }
    
    private func loadMusicFountains() {
        let musicFountainImageName1 = "MusicFountain1.jpg"
        let musicFountainDescription1 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName1, description: musicFountainDescription1))
        
        let musicFountainImageName2 = "MusicFountain2.jpg"
        let musicFountainDescription2 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName2, description: musicFountainDescription2))
        
        let musicFountainImageName3 = "MusicFountain3.jpg"
        let musicFountainDescription3 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName3, description: musicFountainDescription3))
        
        let musicFountainImageName4 = "MusicFountain4.jpg"
        let musicFountainDescription4 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName4, description: musicFountainDescription4))
        
        let musicFountainImageName5 = "MusicFountain5.jpg"
        let musicFountainDescription5 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName5, description: musicFountainDescription5))
        
        let musicFountainImageName6 = "MusicFountain6.jpg"
        let musicFountainDescription6 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName6, description: musicFountainDescription6))
        
        let musicFountainImageName7 = "MusicFountain7.jpg"
        let musicFountainDescription7 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName7, description: musicFountainDescription7))
        
        let musicFountainImageName8 = "MusicFountain8.jpg"
        let musicFountainDescription8 = "The Fountains of Bellagio were destined to romance your senses. Take in a spectacular show of thoughtfully interwoven water, music and light designed to mesmerize its admirers. It is the most ambitious, choreographically complex water feature ever conceived and it’s absolutely free for any visitor to enjoy. "
        specificCategory.append(Category(imageName: musicFountainImageName8, description: musicFountainDescription8))
    }

}

extension SpecificCategoryTableViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchResults = specificCategory.filter({ category -> Bool in
            if searchText.isEmpty {
                return true
            }
            return category.description.lowercased().contains(searchText.lowercased())
        })
        
        specificCategoryTableViewOutlet.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchResults = specificCategory
        specificCategoryTableViewOutlet.reloadData()
    }
    
}
