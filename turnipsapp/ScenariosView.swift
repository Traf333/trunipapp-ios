//
// Created by Igor Trofimov on 05.04.2023.
//

import SwiftUI

struct ScenariosView: View {
    var scenarios: [Scenario]
    var title: String
    var body: some View {
        NavigationView {
            List(scenarios) { scenario in
                NavigationLink(destination: ScenarioView(scenario: scenario)) {
                    Text(scenario.title)
                }
            }.navigationBarTitle(title)
        }
    }
}


struct ScenarioView: View {
    var scenario: Scenario

    var body: some View {
        VStack {
            List(scenario.speeches) { speech in
                Text(speech.text)
            }.navigationBarTitle(scenario.title)
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
