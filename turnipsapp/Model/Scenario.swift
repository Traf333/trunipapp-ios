//
// Created by Igor Trofimov on 05.04.2023.
//

import Foundation

struct Scenario: Identifiable, Codable {
    var id = UUID()
    var title: String
    var speeches = [Speech]()
}
