//
//  ItemStore.swift
//  DDRCounte3r
//
//  Created by Robert Hieger on 3/22/16.
//  Copyright © 2016 Hieger Designs. All rights reserved.
//

import UIKit

class ItemStore {

    init(){
        if let archivedItems = NSKeyedUnarchiver.unarchiveObjectWithFile(itemArchiveURL.path!) as? [Item] {
            allItems += archivedItems
        }
    }

    // var allItems = [Item]()
    
    var allItems = [Item]()
    
    
    func addItem(newItem: Item) {
        allItems.append(newItem)
    }
    
    let itemArchiveURL: NSURL = {
        let documentsDirectories = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.URLByAppendingPathComponent("items.archive")
    }()
    
    func saveChanges() -> Bool {
        print("Saving items to : \(itemArchiveURL.path!)")
        return NSKeyedArchiver.archiveRootObject(allItems, toFile: itemArchiveURL.path!)
    }
}
