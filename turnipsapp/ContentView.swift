//
//  ContentView.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    var scenarios = [
        Scenario(title: "S1"),
        Scenario(title: "S@"),
        Scenario(title: "S321"),
        Scenario(title: "S1123"),
    ]
    var scenariosF = [
        Scenario(title: "S1"),
        Scenario(title: "S@"),
    ]
    var body: some View {
        TabView {
            ScenariosView(scenarios: scenariosF, title: "Мои спектакли")
                    .tabItem {
                        Image(systemName: "star")
                        Text("Мои спектакли")
                    }
            ScenariosView(scenarios: scenarios, title: "Спектакли")
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Спектакли")
                    }

            ConfigurationView().padding()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Настройки")
                    }

        }
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
