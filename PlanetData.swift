//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        var highestPlanet = String("")
        
        var totalScore = Int()
        
        var highestScore = 1
        
        let planetDataJSON =
            NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        
        let rawPlanetDataJSON = NSData(contentsOfURL: planetDataJSON)!
        
        var planetDataDictionariesFromJSON: [[String: AnyObject]]!
        
        do {
            planetDataDictionariesFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetDataJSON, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        
        for planetData in planetDataDictionariesFromJSON    {
            if let name = planetData["Name"] as? String {
                print(name)
                
                if let commonItems = planetData["CommonItemsDetected"] as? Int {
                    print(commonItems)
                    
                    if let uncommonItems = planetData["UncommonItemsDetected"] as? Int {
                        print(uncommonItems)
                        
                        if let rareItems = planetData["RareItemsDetected"] as? Int {
                            print(rareItems)
                            
                            if let legendaryItems = planetData["LegendaryItemsDetected"] as? Int {
                                print (legendaryItems)
                                
                                totalScore = ((commonItems * 1) + (uncommonItems * 2) + (rareItems * 3) + (legendaryItems * 4))
                                print(totalScore)
                                
                                if totalScore > highestScore {
                                    highestPlanet = name
                                    highestScore = totalScore
                                }
                            }
                        }
                    }
                }
            }
            
            
        }
        return highestPlanet
        
        
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"