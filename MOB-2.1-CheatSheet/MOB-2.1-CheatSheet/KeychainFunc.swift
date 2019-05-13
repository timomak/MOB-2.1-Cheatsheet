//
//  KeychainFunc.swift
//  MOB-2.1-CheatSheet
//
//  Created by timofey makhlay on 5/12/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import UIKit
import KeychainSwift

class KeychainFunc {
    let keychain = KeychainSwift()
    func writeToKeychain(save:String, key:String) {
        keychain.set(save, forKey: key)
    }
    func readFromKeychain(key:String){
        print(keychain.get(key))
    }
}
