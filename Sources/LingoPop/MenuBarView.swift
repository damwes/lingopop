import SwiftUI

struct MenuBarView: View {
    @Environment(AppState.self) private var appState

    var body: some View {
        @Bindable var appState = appState

        Picker("Input Language", selection: $appState.selectedInputLanguage) {
            Text("Auto").tag(LingoLanguage.auto)
            Text("English").tag(LingoLanguage.english)
            Text("Portuguese").tag(LingoLanguage.portuguese)
        }

        Picker("Output Language", selection: $appState.selectedOutputLanguage) {
            Text("Portuguese").tag(LingoLanguage.portuguese)
            Text("English").tag(LingoLanguage.english)
        }

        Divider()

        Button("Exit") { NSApplication.shared.terminate(nil) }
            .keyboardShortcut("X")

    }
}
