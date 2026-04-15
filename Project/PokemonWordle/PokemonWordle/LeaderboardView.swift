import SwiftUI
import SwiftData

struct LeaderboardView: View {
    @Query var users: [User]
    var onBack: () -> Void
    
    var body: some View {
        VStack {
            Button("Back") {
                onBack()
            }
            
            Text("Leaderboard")
                .font(.largeTitle.bold())
            
            List {
                ForEach(sortedUsers.indices, id: \.self) { index in
                    let user = sortedUsers[index]
                    
                    HStack {
                        Text("\(index + 1).")
                            .frame(width: 30, alignment: .leading)
                        
                        Text(user.username)
                        
                        Spacer()
                        
                        Text("\(user.rating)")
                    }
                }
            }
        }
    }
    
    var sortedUsers: [User] {
        users.sorted { first, second in
            first.rating > second.rating
        }
    }
}

#Preview {
    LeaderboardView(onBack: { })
        .modelContainer(for: [User.self, GameRecord.self], inMemory: true)
}
