//
// Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

struct ScenariosView: View {
    var scenarios: [Scenario]
    var title: String
    var body: some View {
        NavigationStack {
            List(scenarios) { scenario in
                NavigationLink(destination: ScenarioView(scenario: scenario)) {
                    Text(scenario.title)
                }
            }.navigationBarTitle(title)
        }
        
        .badge(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
        .contextMenu {
            /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
        }
        .itemProvider {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Item@*/nil/*@END_MENU_TOKEN@*/
        }
    }
}


struct ScenarioView: View {
    var scenario: Scenario
    @State var isPresented = false
    init(scenario: Scenario, isPresented: Bool = false) {
        self.scenario = scenario
        self.isPresented = isPresented
    }
    
    
    var body: some View {
        VStack {
            List(scenario.speeches) { speech in
                Text(speech.text)
            }.navigationBarTitle(scenario.title).toolbar(.hidden, for: .tabBar)
                
        }
        
    }
}

class ScenariosView_Previews: PreviewProvider {
    static var scenarios = [
        Scenario(title: "S1"),
        Scenario(title: "S@"),
        Scenario(title: "S321"),
        Scenario(title: "S1123"),
    ]
    static var previews: some View {
        ScenariosView(scenarios: scenarios, title: "Example")
    }
    
}
