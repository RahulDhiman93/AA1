//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        else if (s1.count + s2.count) != shuffle.count {
            return false
        }
        else{
            var string1 = [Character]()
            var string2 = [Character]()
            
            for Character in shuffle{
                for char in s1{
                    if char==Character{
                        string1.append(char)
                    }
                }
            }
            for Character in shuffle{
                for char in s2{
                    if char==Character{
                        string2.append(char)
                    }
                }
            }
            
            let str1 = String(string1)
            let str2 = String(string2)
            
            if str1 == s1 && str2 == s2{
                return true
            }
            else{
                return false
            }
        }
        
        
    }
}
