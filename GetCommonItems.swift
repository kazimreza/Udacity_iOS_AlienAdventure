//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        let commonItems = inventory.filter({(item: UDItem) -> Bool in
            return item.rarity == UDItemRarity.Common
        })
        
        return commonItems
    }
}