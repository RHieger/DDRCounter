//
//  ItemStore.swift
//  DDRCounte3r
//
//  Created by Robert Hieger on 3/22/16.
//  Copyright © 2016 Hieger Designs. All rights reserved.
//

import UIKit

class ItemStore {
    
    // var allItems = [Item]()
    
    var allItems = [Item(name: "Cups of Coffee"), Item(name: "Miles ran")]
    
    
    func addItem(newItem: Item) {
        allItems.append(newItem)
    }
}
