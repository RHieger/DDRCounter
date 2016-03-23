//
//  Item.swift
//  DDRCounte3r
//
//  Created by Robert Hieger on 3/22/16.
//  Copyright © 2016 Hieger Designs. All rights reserved.
//

import Foundation

class Item:NSObject {
    var count:Int
    var name: String?
    
    init(name:String){
        self.count = 0
        self.name = name
        super.init()
    }

    convenience override init(){
        let blankName = ""
        self.init(name:blankName)
    }
}