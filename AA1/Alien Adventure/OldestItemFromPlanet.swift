//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var age = 0
        var old:UDItem? = nil
        
        for index in inventory{
            if index.historicalData["PlanetOfOrigin"] as! String == planet{
                if let carbon = index.historicalData["CarbonAge"] as? Int{
                    if carbon > age{
                        age = carbon
                        old = index
                    }
                }
            }
        }
        return old
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
