import HotKey
import SwiftUI

@main
struct LingoPop: App {

    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow

    @State private var isFirstLaunch = true
    @State private var appState = AppState()

    var body: some Scene {
        Window("Popover", id: "lingo-popover") {
            ContentView()
                .task {
                    if isFirstLaunch {
                        dismissWindow(id: "lingo-popover")
                        isFirstLaunch = false
                    }

                    appState.hotkey.keyDownHandler = {
                        openWindow(id: "lingo-popover")
                    }
                }
        }
        .windowResizability(.contentSize)
        .windowStyle(.hiddenTitleBar)
        .windowLevel(.floating)

        MenuBarExtra("LingoPop", systemImage: "bubble.middle.top") {
            MenuBarView()
                .environment(appState)
        }
    }
}
