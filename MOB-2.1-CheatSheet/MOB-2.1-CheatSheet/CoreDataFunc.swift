//
//  CoreDataFunc.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/12/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import UIKit
import CoreData

class CoreDataFunc {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    func savePerson(name:String, age: Int) {
        
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Item", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        newUser.setValue(name, forKey: "name")
        newUser.setValue("\(age)", forKey: "age")
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
    }
    
    func readPerson() {
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Item")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "name") as! String)
            }
            
        } catch {
            
            print("Failed")
        }
    }
    
    func deleteAll() {
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Item")
        do {
            var result = try context.fetch(request) as! [NSManagedObject]
            for item in result {
                context.delete(item)
            }
            do {
                try context.save()
            }
            catch {
                print(error)
            }
        } catch {
            
            print("Failed")
        }
        
    }
}
