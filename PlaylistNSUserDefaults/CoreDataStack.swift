//
//  CoreDataStack.swift
//  PlaylistNSUserDefaults
//
//  Created by Ivan Ramirez on 9/5/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    
    static let container: NSPersistentContainer = {
        // the string name should be the same name as the model and the name of the app
        //---------------------------------------------📛 change the name--
       let container = NSPersistentContainer(name: "PlaylistNSUserDefaults")
        //line below load
        container.loadPersistentStores(completionHandler: { (_, error) in
            //if theres an error thats actuall here
            if let error = error  {
                fatalError("Failed to load Data from persistent Store")
            }
        })
        // return the container bc its a computed code
        return container
    }()
    
    //thise is an instance of our MOC
    static var context: NSManagedObjectContext {
        // return the enter container block code we wrote
        return container.viewContext
    }
}
