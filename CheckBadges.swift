//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var allBadges = [UDRequestType]()
        for badge in badges {
            allBadges.append(badge.requestType)
        }
        
        if allBadges.count < requestTypes.count {
            return false
        }
        
        for request in requestTypes {
            if !allBadges.contains(request) {
                return false
            }
        }
        
        return true
    }
    
}
