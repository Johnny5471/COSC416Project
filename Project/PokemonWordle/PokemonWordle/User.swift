import SwiftData

@Model
class User {
    var username: String
    var password: String
    var rating: Int
    var wins: Int
    var losses: Int
    var currentStreak: Int
    var bestStreak: Int
    
    init(username: String, password: String){
        self.username = username
        self.password = password
        self.rating = 1000
        self.wins = 0
        self.losses = 0
        self.currentStreak = 0
        self.bestStreak = 0
    }
}
