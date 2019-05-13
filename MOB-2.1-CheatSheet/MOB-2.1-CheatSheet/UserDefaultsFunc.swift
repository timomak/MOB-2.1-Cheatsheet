//
//  UserDefaultsFunc.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/12/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import UIKit

class UserDefaultsFunc {
    
    func saveItemUD(item: String, key: String) {
        UserDefaults.standard.set(item, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    func readStringUD(key: String) -> String{
        return UserDefaults.standard.string(forKey: key)!
        
    }
}
