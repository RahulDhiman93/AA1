//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let dataArray = NSArray(contentsOf: dataFileURL)
        
        var banned = [Int]()
        
        for item in dataArray! {
            
            let itemName = ((item as AnyObject).object(forKey:"Name") as? String)?.lowercased()
            let historicalData = ((item as AnyObject).object(forKey:"HistoricalData") as? [String:AnyObject])
            let carbonAge = historicalData!["CarbonAge"] as? Int
            let itemId = ((item as AnyObject).object(forKey:"ItemID") as? Int)
            if itemName!.contains("laser") && carbonAge! < 30 {
                banned.append(itemId!)
            }
            
        }
        return banned
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
