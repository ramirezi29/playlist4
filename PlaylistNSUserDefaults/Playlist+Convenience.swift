//
//  Playlist+Convenience.swift
//  PlaylistNSUserDefaults
//
//  Created by Ivan Ramirez on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData

extension Playlist{
    //init from name and song
    //puts core data under the hood
    
    // at the end it ends with
    convenience init(name: String) {
        //our objects need to live in our sandbox [CoreDataStack.context}
        self.init(context: CoreDataStack.context)
        // right now its just a blob of clay we need to give it shape
        self.name = name
    }
    
}
