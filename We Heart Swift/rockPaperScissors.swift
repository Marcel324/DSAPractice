//We build enums that follow Rock, Paper, Scissors convention then build a function that determines whether you won or not.


enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

func match(first: HandShape, second: HandShape) -> MatchResult {
    
    if first == second {
        return .draw
    }
    
    if first == .paper && second == .rock {
       return .win
    }
    
    if first == .rock && second == .scissors {
        return .win
    }
    
    if first == .scissors && second == .paper {
        return .win
    }
    
    
    return .lose
}
