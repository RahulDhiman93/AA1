//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rar = [UDItemRarity:Int]()
        rar = [.common : 0, .uncommon : 0, .rare : 0, .legendary: 0]
        
        for index in inventory{
            if index.rarity == .common {
                rar[.common] = rar[.common]! + 1
            }
            else if index.rarity == .rare{
                rar[.rare] = rar[.rare]! + 1
            }
            else if index.rarity == .legendary{
                rar[.legendary] = rar[.legendary]! + 1
            }
            else if index.rarity == .uncommon{
                rar[.uncommon] = rar[.uncommon]! + 1
            }
        }
        
        
        return rar
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
