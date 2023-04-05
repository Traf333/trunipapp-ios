//
//  turnipsappApp.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

@main
struct turnipsappApp: App {
    init() {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
