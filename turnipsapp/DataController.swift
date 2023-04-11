//
//  DataController.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 11.04.2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Some error with persistance happened: \(error.localizedDescription)")
            }
        }
    }
}
