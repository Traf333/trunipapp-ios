import SwiftUI

struct ConfigurationView: View {
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = false
    
    var body: some View {
        VStack {
            Text("Настройки").font(.largeTitle)
            Toggle(isOn: $toggle1) {
                Text("Темная тема")
            }
            Toggle(isOn: $toggle2) {
                Text("Toggle 2")
            }
            Toggle(isOn: $toggle3) {
                Text("Toggle 3")
            }
        }
        .background(toggle1  ? Color.black : Color.white)
        .foregroundColor(toggle1 ? Color.white : Color.black)
    }
}
