//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var reverseName = ""
        
        for item in inventory {
            
            if item.name.characters.count > reverseName.characters.count {
                reverseName = item.name
                
                reverseName = String(reverseName.characters.reverse())
                
            }
        }
        return reverseName
    }
    
}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"