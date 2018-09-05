//
//  Song+Convenience.swift
//  PlaylistNSUserDefaults
//
//  Created by Ivan Ramirez on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation

extension Song {

    // init are instructions on how to create something
    // Song has the properites of name and arist
    convenience init(name: String, artist: String) {
        self.init(context: CoreDataStack.context)
        self.name = name
        self.artist = artist
        
    }
    
}
