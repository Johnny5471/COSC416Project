import SwiftUI
import SwiftData

struct LoginView: View {
    @Environment(\.modelContext) var context
    @Query var users: [User]
    
    @State private var username = ""
    @State private var password = ""
    @State private var selectedUser: User?
    @State private var showHome = false
    @State private var message = ""
    
    var body: some View {
        if showHome, let selectedUser {
            HomeView(currentUser: selectedUser)
        } else {
            VStack(spacing: 20) {
                Text("Pokémon Guess")
                    .font(.largeTitle.bold())
                
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                Button("Login / Create Account") {
                    login()
                }
                
                Text(message)
                    .foregroundStyle(.red)
            }
            .padding()
        }
    }
    
    func login() {
        if username.isEmpty || password.isEmpty {
            message = "Enter a username and password."
            return
        }
        
        if let foundUser = users.first(where: { $0.username == username }) {
            if foundUser.password == password {
                selectedUser = foundUser
                showHome = true
                message = ""
            } else {
                message = "Incorrect password."
            }
        } else {
            let newUser = User(username: username, password: password)
            context.insert(newUser)
            selectedUser = newUser
            showHome = true
            message = ""
        }
    }
}

#Preview {
    LoginView()
        .modelContainer(for: [User.self, GameRecord.self], inMemory: true)
}
