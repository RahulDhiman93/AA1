//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    if UInt8(lhs.rarity.rawValue) < UInt8(rhs.rarity.rawValue){
        return true
    }
    else if UInt8(rhs.rarity.rawValue) < UInt8(lhs.rarity.rawValue){
        return false
    }
    else{
        if lhs.baseValue < rhs.baseValue{
            return true
        }
        else{
            return false
        }
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
