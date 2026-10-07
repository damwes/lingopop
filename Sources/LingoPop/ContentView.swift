import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "paperclip")
            .imageScale(.large)
            .foregroundColor(.accentColor)
        
        VStack {
            Text("Hello LingoPop!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
