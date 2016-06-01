//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        
        let combineBaseValue = inventory.reduce(0, combine: {(total, UDItem) -> Int in
            total + UDItem.baseValue
        })
        
        return combineBaseValue
    }
    
}