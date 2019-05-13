//
//  ViewController.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/11/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import UIKit
import Realm

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makePlistWork()
        makeUDWork()
        makeKeychainWork()
        makeCoreDataWork()
        makeRealmWork()
    }
    
    func makePlistWork() {
        let plist = Plist(name: "Item")
        do {
            // Write
            try plist!.addValuesToPlistFile(dictionary: ["name":"Timo", "age":18])
        }
        catch {
            print(error)
        }
        // Read
        print(plist!.getValuesInPlistFile()!)
    }
    
    func makeUDWork() {
        let userD = UserDefaultsFunc()
        userD.saveItemUD(item: "Hello", key: "first")
        
        print(userD.readStringUD(key: "first")) // Returns "Hello"
    }
    
    func makeKeychainWork() {
        let keychain = KeychainFunc()
        keychain.writeToKeychain(save: "I got the keys", key: "key")
        keychain.readFromKeychain(key: "key")
    }
    
    func makeCoreDataWork() {
        let coreData = CoreDataFunc()
        coreData.savePerson(name: "Josh", age: 20)
        coreData.readPerson()
        coreData.deleteAll()
    }
    
    func makeRealmWork() {
        let realmFunc = RealmFunc()
        realmFunc.write(name: "tom", age: 24)
        realmFunc.read()
        realmFunc.deleteAll()
    }


}

