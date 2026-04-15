import Foundation

enum MatchResult {
    case exact
    case partial
    case none
}

struct ComparisonResult {
    var type1: MatchResult
    var type2: MatchResult
    var evolutionStage: MatchResult
    var color: MatchResult
}

func compare(guess: PokemonEntry, target: PokemonEntry) -> ComparisonResult {
    var type1Result: MatchResult = .none
    if guess.type1 == target.type1 {
        type1Result = .exact
    }
    
    var type2Result: MatchResult = .none
    if guess.type2 == target.type2 {
        type2Result = .exact
    }
    
    var stageResult: MatchResult = .none
    if guess.evolutionStage == target.evolutionStage {
        stageResult = .exact
    }
    
    var colorResult: MatchResult = .none
    
    if guess.colors.count == target.colors.count {
        var same = true
        
        for g in guess.colors {
            if !target.colors.contains(g) {
                same = false
            }
        }
        
        if same {
            colorResult = .exact
        }
    }
    
    if colorResult != .exact {
        for g in guess.colors {
            if target.colors.contains(g) {
                colorResult = .partial
            }
        }
    }
    
    return ComparisonResult(
        type1: type1Result,
        type2: type2Result,
        evolutionStage: stageResult,
        color: colorResult
    )
}
