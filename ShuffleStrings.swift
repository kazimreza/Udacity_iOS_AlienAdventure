//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        
        var string1Chars = ""
        var string2Chars = ""
        var shuffleStringChars = ""
        var shuffleCharindex = 0
        let totalcharcount = s1.characters.count + s2.characters.count
        
        var remakeStringA = ""
        var remakeStringB = ""
        
        
        if s1.characters.count == 0 && s2.characters.count == 0 && shuffle.characters.count == 0 {
            return true
        } else if totalcharcount != shuffle.characters.count {
            return false
            
        } else {
            for alpha1 in s1.characters {
                string1Chars.append(alpha1)
            }
            for alpha2 in s2.characters {
                string2Chars.append(alpha2)
            }
            
            for alpha3 in shuffle.characters {
                shuffleStringChars.append(alpha3)
            }
            
            
        for alpha4 in shuffleStringChars.characters   {
                if string1Chars.containsString(String(alpha4)){
                    remakeStringA.append(alpha4)
                    
                }
                else if string2Chars.containsString(String(alpha4)){
                    remakeStringB.append(alpha4)
                }
                
                shuffleCharindex += 1
                
            }
            
            
            if string1Chars == remakeStringA && string2Chars == remakeStringB {
             
                return true
                
            } else {
                
               
                return false
            }
            
            
        }
        
        
    }
    
}
