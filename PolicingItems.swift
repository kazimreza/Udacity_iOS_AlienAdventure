//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errorDictionry = [UDPolicingError:Int]()
        errorDictionry = [UDPolicingError.NameContainsLaser:0, UDPolicingError.ItemFromCunia:0,  UDPolicingError.ValueLessThan10:0]
        
        if inventory.isEmpty {
            return errorDictionry
        }
        
        for item in inventory {
            do {
                try policingFilter(item)
                
            } catch UDPolicingError.NameContainsLaser {
                errorDictionry[UDPolicingError.NameContainsLaser] = errorDictionry[UDPolicingError.NameContainsLaser]!+1
            } catch UDPolicingError.ItemFromCunia {
                errorDictionry[UDPolicingError.ItemFromCunia] = (errorDictionry[UDPolicingError.ItemFromCunia])!+1
            } catch UDPolicingError.ValueLessThan10 {
                errorDictionry[UDPolicingError.ValueLessThan10] = errorDictionry[UDPolicingError.ValueLessThan10]!+1
            } catch {
                print("Unknown error")
            }
        }
        return errorDictionry
    }
}