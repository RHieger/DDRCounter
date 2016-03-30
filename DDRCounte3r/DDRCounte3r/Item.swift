//
//  Item.swift
//  DDRCounte3r
//
//  Created by Robert Hieger on 3/22/16.
//  Copyright © 2016 Hieger Designs. All rights reserved.
//

import Foundation

class Item:NSObject, NSCoding {
    var count:Int
    var name: String?
    let itemKey: String
    
    init(name:String){
        self.count = 0
        self.name = name
        self.itemKey = NSUUID().UUIDString
        super.init()
    }

    convenience override init(){
        let blankName = ""
        self.init(name:blankName)
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey:"name")
        aCoder.encodeObject(itemKey, forKey:"itemKey")
        aCoder.encodeInteger(count, forKey: "count")
        
    }
    
    required init(coder aDecoder: NSCoder){
        name = aDecoder.decodeObjectForKey("name") as! String
        itemKey = aDecoder.decodeObjectForKey("itemKey") as! String
        count = aDecoder.decodeIntegerForKey("count")
        super.init()
    }
    
}