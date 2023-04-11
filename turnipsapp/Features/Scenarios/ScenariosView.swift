//
// Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

struct ScenariosView: View {
    var scenarios: [Scenario]
    var title: String
    var body: some View {
        
        List(scenarios) { scenario in
            NavigationLink(destination: ScenarioView(scenario: scenario)) {
                Text(scenario.title)
            }
        }.navigationBarTitle(title)
        
        
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

class ScenariosView_Previews: PreviewProvider {
    static var s = ScenariosModelView()
    static var previews: some View {
        ScenariosView(scenarios: s.scenarios, title: "Example")
    }
    
}
