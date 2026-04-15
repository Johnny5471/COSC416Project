import SwiftUI
import SwiftData

@main
struct PokemonGuessApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
        .modelContainer(for: [User.self, GameRecord.self])
    }
}
