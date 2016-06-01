//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        
        let itemInventory = inventory.sort({(item0: UDItem, item1: UDItem) -> Bool in return item0<item1})
        return itemInventory
        
    }
    
}