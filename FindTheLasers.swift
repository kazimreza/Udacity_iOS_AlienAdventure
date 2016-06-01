//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func findTheLasers() -> (UDItem -> Bool) {
        
        func containsLaser(item: UDItem) -> Bool {
            let itemName: String = item.name
            if itemName.rangeOfString("laser") == nil {
                return false
            } else {
                return true
            }
        }
        return containsLaser
        
    }
}