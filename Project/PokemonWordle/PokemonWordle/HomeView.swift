import SwiftUI

struct HomeView: View {
    var currentUser: User
    
    @State private var showGame = false
    @State private var showLeaderboard = false
    @State private var showProfile = false
    
    var body: some View {
        if showGame {
            GameView(currentUser: currentUser, onBack: { showGame = false })
        } else if showLeaderboard {
            LeaderboardView(onBack: { showLeaderboard = false })
        } else if showProfile {
            ProfileView(currentUser: currentUser, onBack: { showProfile = false })
        } else {
            VStack(spacing: 20) {
                Text("Welcome, \(currentUser.username)")
                    .font(.largeTitle.bold())
                
                Text("Rating: \(currentUser.rating)")
                
                Button("Play Game") {
                    showGame = true
                }
                
                Button("Leaderboard") {
                    showLeaderboard = true
                }
                
                Button("Profile") {
                    showProfile = true
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView(currentUser: User(username: "Ash", password: "1234"))
}
