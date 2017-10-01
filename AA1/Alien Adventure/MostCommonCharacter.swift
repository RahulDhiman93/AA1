//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var record = 0
        var chosenCharacter: Character? = nil
        
        var characterDictionary = [Character: Int]()
        for item in inventory {
            
            let name = item.name.lowercased().characters
            
            for character in name {
                
                if characterDictionary[character] == nil {
                    
                    characterDictionary[character] = 0
                    
                }
                
                characterDictionary[character] = characterDictionary[character]! + 1
                
                if characterDictionary[character]! > record {
                    
                    record = characterDictionary[character]!
                    chosenCharacter = character
                    
                }
                
            }
            
        }
        
        return chosenCharacter
        
    }
}
