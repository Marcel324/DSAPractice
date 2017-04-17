
//This function checks that the parentheses are properly opened and closed in a string.
func verify(expression: String) -> Bool {
    
    guard expression.characters.contains("("), expression.characters.contains(")"), expression.characters.count % 2 == 0 else {return false}
    
    if expression.characters.index(of: "(")! < expression.characters.index(of: ")")! {
        return true
    }
    return false
}
