//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let dataArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        
        var laserItem = [Int]()
        
        for item in dataArray {
            if let itemID = item["ItemID"] as? Int {
                if let name = item["Name"] as? String {
                    if let historicalData = item["HistoricalData"] as? [String:AnyObject]{
                        if let age = historicalData["CarbonAge"] as? Int {
                            if name.containsString("Laser") && age < 30 {
                                laserItem.append(itemID)
                            }
                        }
                    }
                }
            }
        }
        return laserItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"