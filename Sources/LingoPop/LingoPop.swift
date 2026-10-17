import HotKey
import SwiftUI

@main
struct LingoPop: App {

    @Environment(\.openWindow) private var openWindow

    @State private var appState = AppState()

    var body: some Scene {
        Window("Popover", id: "lingo-popover") {
            ContentView()
        }
        .windowResizability(.contentSize)
        .windowStyle(.hiddenTitleBar)
        .windowLevel(.floating)
        .defaultLaunchBehavior(.suppressed)

        MenuBarExtra("LingoPop", systemImage: "bubble.middle.top") {
            MenuBarView()
                .environment(appState)
                .task {
                    appState.hotkey.keyDownHandler = {
                        openWindow(id: "lingo-popover")
                    }
                }
        }
    }
}
