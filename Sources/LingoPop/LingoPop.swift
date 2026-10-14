import SwiftUI

@main
struct LingoPop: App {

    enum LingoLanguage: String, CaseIterable, Identifiable {
        case auto, english, portuguese
        var id: Self { self }
    }
    
    @State private var selectedInputLanguage: LingoLanguage = .auto
    @State private var selectedOutputLanguage: LingoLanguage = .portuguese
    
    var body: some Scene {
        MenuBarExtra("Lingo Settings", systemImage: "bubble.middle.top") {
            Picker("Input Language", selection: $selectedInputLanguage) {
                Text("Auto").tag(LingoLanguage.auto)
                Text("English").tag(LingoLanguage.english)
                Text("Portuguese").tag(LingoLanguage.portuguese)
            }

            Picker("Output Language", selection: $selectedOutputLanguage) {
                Text("Portuguese").tag(LingoLanguage.portuguese)
                Text("English").tag(LingoLanguage.english)
            }

            Divider()

            Button("Exit") { NSApplication.shared.terminate(nil) }
                .keyboardShortcut("X")
        }
    }
}
