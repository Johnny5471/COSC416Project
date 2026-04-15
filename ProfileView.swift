import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query var records: [GameRecord]
    
    var currentUser: User
    var onBack: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Button("Back") {
                onBack()
            }
            
            Text(currentUser.username)
                .font(.largeTitle.bold())
            
            Text("Rating: \(currentUser.rating)")
            Text("Wins: \(currentUser.wins)")
            Text("Losses: \(currentUser.losses)")
            Text("Current Streak: \(currentUser.currentStreak)")
            Text("Best Streak: \(currentUser.bestStreak)")
            
            Text("Game History")
                .font(.title2.bold())
            
            List {
                ForEach(userRecords.indices, id: \.self) { index in
                    let record = userRecords[index]
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(record.pokemonName)
                            .font(.headline)
                        
                        Text(record.didWin ? "Win" : "Loss")
                        Text("Guesses: \(record.guesses)")
                        Text(record.date.formatted())
                            .font(.caption)
                    }
                }
            }
        }
        .padding()
    }
    
    var userRecords: [GameRecord] {
        records.filter { record in
            record.username == currentUser.username
        }
        .sorted { first, second in
            first.date > second.date
        }
    }
}

#Preview {
    ProfileView(
        currentUser: User(username: "Gary", password: "1234"),
        onBack: { }
    )
    .modelContainer(for: [User.self, GameRecord.self], inMemory: true)
}
