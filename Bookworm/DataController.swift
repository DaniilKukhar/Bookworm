//
//  DataController.swift
//  Bookworm
//
//  Created by Danya Kukhar on 30.01.2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    var container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
