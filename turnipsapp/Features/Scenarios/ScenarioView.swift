//
//  ScenarioView.swift
//  turnipsapp
//
//  Created by Igor Trofimov on 08.04.2023.
//

import SwiftUI


struct ScenarioView: View {
    var scenario: Scenario
    @State var isPresented = false
    var file = ""
    var speeches = [String]()
    
    init(scenario: Scenario, isPresented: Bool = false) {
        self.scenario = scenario
        self.isPresented = isPresented
        if let path = Bundle.main.path(forResource: scenario.filepath, ofType: "txt") {
            do {
                file = try String(contentsOfFile: path, encoding: .utf8)
                speeches = file.components(separatedBy: "\n")
            } catch let error {
                print(error)
            }
        }
    }
    
    
    var body: some View {
        
        ScrollView {
            LazyVStack(spacing: 10) {
//                ForEach(speeches) { speech in
//                    Text(speech.text!).frame(maxWidth: .infinity, alignment: .leading)
//
//                }
                
            }.padding()
        }
        .navigationBarTitle(scenario.title)
    }
}

struct ScenarioView_Previews: PreviewProvider {
    static var scenario = Scenario(title: "Bruklin")
    static var previews: some View {
        NavigationView(content: {
            ScenarioView(scenario: scenario)
        })
    }
}
