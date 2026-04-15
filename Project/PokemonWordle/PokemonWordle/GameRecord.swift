import SwiftData
import Foundation

@Model
class GameRecord {
    var username: String
    var pokemonName: String
    var didWin: Bool
    var guesses: Int
    var date: Date
    
    init(username: String, pokemonName: String, didWin: Bool, guesses: Int) {
        self.username = username
        self.pokemonName = pokemonName
        self.didWin = didWin
        self.guesses = guesses
        self.date = Date()
    }
}
