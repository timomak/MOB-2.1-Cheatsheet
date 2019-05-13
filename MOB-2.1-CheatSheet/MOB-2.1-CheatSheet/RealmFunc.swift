//
//  RealmFunc.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/12/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import Foundation
import RealmSwift


class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}


class RealmFunc {
    let realm = try! Realm()
    
    
    func write(name:String, age:Int) {
        let obj = Person()
        obj.age = age
        obj.name = name
        try! realm.write {
            realm.add(obj)
        }
    }
    
    func read() {
        var objects = realm.objects(Person.self)
        print("Person saved in realm: ", objects)
    }
    
    func deleteAll() {
        try! realm.write {
            realm.deleteAll()
        }
    }
}
