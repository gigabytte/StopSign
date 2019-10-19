//
//  Realm Objc.swift
//  StopSign
//
//  Created by Greg Brooks on 2019-10-18.
//  Copyright © 2019 Tiny Square Studios. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift


class soundTable: Object {
    
    @objc dynamic var soundID = NSUUID().uuidString
    @objc dynamic var folderID = NSUUID().uuidString
    @objc dynamic var noteTitle: String = ""
    @objc dynamic var noteBody: NSData?
    @objc dynamic var noteCreationDate: Date?
    @objc dynamic var noteLanguageID: Int = 0
    @objc dynamic var canvasFileName: String = ""
    @objc dynamic var activeState: Bool = true
    
    @objc dynamic var isDeleted: Bool = false
    
    override class func primaryKey() -> String {
        return "noteID"
    }
    
}
