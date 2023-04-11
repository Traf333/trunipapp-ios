//
//  turnipsappApp.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

@main
struct turnipsappApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
