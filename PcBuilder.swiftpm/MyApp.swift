import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(selectedComponent: PCComponent.all.first!)
        }
    }
}
