import HotKey
import Observation
import SwiftUI

enum LingoLanguage: String, CaseIterable, Identifiable {
    case auto, english, portuguese
    var id: Self { self }
}

@Observable
final class AppState {

    var selectedInputLanguage: LingoLanguage = .auto
    var selectedOutputLanguage: LingoLanguage = .portuguese
    var hotkey = HotKey(key: .l, modifiers: [.option])
}
