//
//  ContentView.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    var s = ScenariosModelView()
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var speeches: FetchedResults<Speech>
    
    func generateText() {
        let texts = ["a", "b", "c", "d"]
        let texts1 = ["4", "3", "2", "1"]
        
        let text = texts.randomElement()
        let text1 = texts1.randomElement()
        let s = Speech(context: moc)
        s.text = "\(text!) \(text1!) text"

    }
    
    @State var isFirst = false
    var body: some View {
        VStack {
            Button(action: {
                generateText()
                
                try? moc.save()
            }) {
                isFirst ?  Text("clicked me ") :  Text("click me")
             
            }
            List(speeches) { speech in
                HStack {
                    Text(speech.text ?? "Undefined")
                    
                    Button("Delete") {
                        isFirst = false
                        print(speech)
                    }
                }
            }
//            NavigationView {
//                TabView {
//                    ScenariosView(scenarios: s.scenarios, title: "Мои спектакли")
//                        .tabItem {
//                            Image(systemName: "star")
//                            Text("Мои спектакли")
//                        }
//                    ScenariosView(scenarios: s.scenarios, title: "Спектакли")
//                        .tabItem {
//                            Image(systemName: "list.bullet")
//                            Text("Спектакли")
//                        }
//
//                    ConfigurationView().padding()
//                        .tabItem {
//                            Image(systemName: "gear")
//                            Text("Настройки")
//                        }
//
//                }
//
//
//
//
//            }
        }
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
