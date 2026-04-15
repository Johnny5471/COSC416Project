import SwiftUI
import SwiftData

struct GuessRowData {
    var pokemon: PokemonEntry
    var result: ComparisonResult
}

struct GameView: View {
    @Environment(\.modelContext) var context
    
    var currentUser: User
    var onBack: () -> Void
    
    @State private var target = PokemonData.gen1[Int.random(in: 0..<PokemonData.gen1.count)]
    @State private var guessText = ""
    @State private var guessRows: [GuessRowData] = []
    @State private var attempts = 0
    @State private var message = ""
    @State private var hintMessage = ""
    @State private var gameOver = false
    
    @State private var shownHint5 = false
    @State private var shownHint10 = false
    @State private var shownHint15 = false
    
    let pokemonWidth: CGFloat = 72
    let statWidth: CGFloat = 52
    let colorWidth: CGFloat = 78
    let maxGuesses = 20
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Button("Back") {
                    onBack()
                }
                Spacer()
            }
            
            Text("Guess the Pokémon")
                .font(.title2.bold())
            
            VStack(spacing: 8) {
                HStack {
                    Text("Guess:")
                    
                    TextField("Enter Pokémon name", text: $guessText)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Guess") {
                        submitGuess()
                    }
                }
                
                if !guessText.isEmpty && !filteredPokemonNames.isEmpty {
                    suggestionList
                }
            }
            
            Text("Guesses left: \(maxGuesses - attempts)")
                .font(.subheadline)
            
            Text(message)
                .font(.subheadline)
            
            Text(hintMessage)
                .font(.subheadline)
            
            ScrollView(.horizontal) {
                ScrollViewReader { proxy in
                    ScrollView {
                        VStack(spacing: 10) {
                            headerRow
                            
                            ForEach(guessRows.indices, id: \.self) { index in
                                guessRowView(row: guessRows[index])
                                    .id(index)
                                    .transition(.move(edge: .bottom))
                            }
                        }
                        .padding(.vertical, 4)
                    }
                    .frame(height: 320)
                    .onChange(of: guessRows.count) {
                        if guessRows.count > 0 {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                                withAnimation(.easeInOut(duration: 0.35)) {
                                    proxy.scrollTo(guessRows.count - 1, anchor: .bottom)
                                }
                            }
                        }
                    }
                }
            }
            
            if gameOver {
                Button("New Game") {
                    restartGame()
                }
            }
        }
        .padding()
    }
    
    var filteredPokemonNames: [String] {
        var matches: [String] = []
        
        for p in PokemonData.gen1 {
            if p.name.lowercased().contains(guessText.lowercased()) {
                matches.append(p.name)
            }
        }
        
        return matches.sorted()
    }
    
    var suggestionList: some View {
        ScrollView {
            VStack(spacing: 4) {
                ForEach(filteredPokemonNames.prefix(6), id: \.self) { name in
                    Button {
                        guessText = name
                    } label: {
                        HStack {
                            Text(name)
                                .foregroundStyle(.primary)
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.12))
                        )
                    }
                }
            }
        }
        .frame(maxHeight: 160)
    }
    
    var headerRow: some View {
        HStack(spacing: 5) {
            headerBox("Pokémon", width: pokemonWidth)
            headerBox("Type 1", width: statWidth)
            headerBox("Type 2", width: statWidth)
            headerBox("Stage", width: statWidth)
            headerBox("Color", width: colorWidth)
        }
    }
    
    func headerBox(_ text: String, width: CGFloat) -> some View {
        Text(text)
            .font(.system(size: 9, weight: .bold))
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .minimumScaleFactor(0.7)
            .frame(width: width, height: 28)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
            )
    }
    
    func guessRowView(row: GuessRowData) -> some View {
        HStack(spacing: 5) {
            infoBox(row.pokemon.name, result: .none, width: pokemonWidth, useMatchColor: false)
            infoBox(row.pokemon.type1, result: row.result.type1, width: statWidth, useMatchColor: true)
            infoBox(row.pokemon.type2 ?? "None", result: row.result.type2, width: statWidth, useMatchColor: true)
            infoBox("\(row.pokemon.evolutionStage)", result: row.result.evolutionStage, width: statWidth, useMatchColor: true)
            infoBox(colorText(row.pokemon.colors), result: row.result.color, width: colorWidth, useMatchColor: true)
        }
    }
    
    func infoBox(_ text: String, result: MatchResult, width: CGFloat, useMatchColor: Bool) -> some View {
        Text(text)
            .font(.system(size: 10, weight: .bold))
            .multilineTextAlignment(.center)
            .lineLimit(3)
            .minimumScaleFactor(0.6)
            .frame(width: width, height: 48)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(useMatchColor ? color(for: result) : Color.white)
            )
    }
    
    func colorText(_ colors: [String]) -> String {
        var text = ""
        
        for i in colors.indices {
            text += colors[i]
            if i < colors.count - 1 {
                text += ", "
            }
        }
        
        return text
    }
    
    func color(for result: MatchResult) -> Color {
        if result == .exact {
            return .green
        } else if result == .partial {
            return .yellow
        } else {
            return .red.opacity(0.85)
        }
    }
    
    func submitGuess() {
        if gameOver {
            return
        }
        
        var found: PokemonEntry? = nil
        
        for p in PokemonData.gen1 {
            if p.name.lowercased() == guessText.lowercased() {
                found = p
            }
        }
        
        if let found {
            attempts += 1
            updateHint()
            
            let comparison = compare(guess: found, target: target)
            
            withAnimation(.easeInOut(duration: 0.35)) {
                guessRows.append(
                    GuessRowData(pokemon: found, result: comparison)
                )
            }
            
            if found.name == target.name {
                message = "Correct!"
                gameOver = true
                
                currentUser.wins += 1
                currentUser.currentStreak += 1
                if currentUser.currentStreak > currentUser.bestStreak {
                    currentUser.bestStreak = currentUser.currentStreak
                }
                
                let pointsEarned = 100 - ((attempts - 1) * 10)
                currentUser.rating += pointsEarned
                
                let record = GameRecord(
                    username: currentUser.username,
                    pokemonName: target.name,
                    didWin: true,
                    guesses: attempts
                )
                context.insert(record)
            } else {
                message = "Not correct."
            }
            
            if attempts >= maxGuesses && !gameOver {
                message = "You lost! The Pokémon was \(target.name)"
                gameOver = true
                
                currentUser.losses += 1
                currentUser.currentStreak = 0
                
                let pointsEarned = 100 - ((attempts - 1) * 10)
                currentUser.rating += pointsEarned
                
                let record = GameRecord(
                    username: currentUser.username,
                    pokemonName: target.name,
                    didWin: false,
                    guesses: attempts
                )
                context.insert(record)
            }
            
            guessText = ""
        } else {
            message = "Pokémon not found in current Gen 1 list."
        }
    }
    
    func updateHint() {
        if attempts >= 15 && !shownHint15 {
            shownHint15 = true
            hintMessage = "Hint: One of the colors is \(target.colors[0])."
        } else if attempts >= 10 && !shownHint10 {
            shownHint10 = true
            hintMessage = "Hint: Type 1 is \(target.type1)."
        } else if attempts >= 5 && !shownHint5 {
            shownHint5 = true
            hintMessage = "Hint: Evolution stage is \(target.evolutionStage)."
        }
    }
    
    func restartGame() {
        target = PokemonData.gen1[Int.random(in: 0..<PokemonData.gen1.count)]
        guessText = ""
        guessRows.removeAll()
        attempts = 0
        message = ""
        hintMessage = ""
        gameOver = false
        shownHint5 = false
        shownHint10 = false
        shownHint15 = false
    }
}

#Preview {
    GameView(
        currentUser: User(username: "Ash", password: "1234"),
        onBack: { }
    )
}
