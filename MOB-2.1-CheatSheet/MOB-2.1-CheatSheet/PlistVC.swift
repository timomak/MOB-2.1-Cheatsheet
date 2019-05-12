//
//  plist.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/12/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import UIKit

struct Item: Codable {
    var name: String
    var age: Int
}

class PlistVC: ViewController {
    
    var globalPath = URL.init(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readPlist()
        readCodablePlist()
        
        writeDataToPlist()
        readCodablePlist()
    }
    
    /// Read contents of P list
    func readPlist() {
        var propertyListForamt =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: AnyObject] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Item", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListForamt) as! [String:AnyObject]
            // MARK: Here plist is a dictionary.
            print(plistData)
        } catch {
            print("Error reading plist: \(error), format: \(propertyListForamt)")
        }
    }
    
    /// Read a codable plist
    func readCodablePlist() {
        if  let path        = Bundle.main.path(forResource: "Item", ofType: "plist"),
            let xml         = FileManager.default.contents(atPath: path),
            let preferences = try? PropertyListDecoder().decode(Item.self, from: xml)
        {
            globalPath = URL(string: path)
            // MARK: You have complete access to the object.
            print(preferences.name)
        }
    }
    
    func writeDataToPlist() {
        let itemToWrite = Item(name: "MACBOOK", age: 3)
        
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        
        let path = globalPath
//            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("Item.plist")
        
        do {
            let data = try encoder.encode(itemToWrite)
            try data.write(to: path!)
        } catch {
            print(error)
        }
    }
    
}
