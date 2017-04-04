func findWords(_ words: [String]) -> [String] {
    let topRow: [Character] = ["q","w","e","r","t","y","u","i","o","p"]
    let midRow: [Character] = ["a","s","d","f","g","h","j","k","l"]
    let bottomRow: [Character] = ["z","x","c","v","b","n","m"]
    var outputArr: [String] = []
    
    for word in words {
        var topCounter = 0
        var midCounter = 0
        var bottomCounter = 0
        let lowercasedWord = word.lowercased()
        for character in lowercasedWord.characters {
            if topRow.contains(character) {
                topCounter += 1
            } else if midRow.contains(character) {
                midCounter += 1
            } else if bottomRow.contains(character) {
                bottomCounter += 1
            }
        }
        if topCounter == word.characters.count || midCounter == word.characters.count || bottomCounter == word.characters.count {
            outputArr.append(word)
        }
    }
    return outputArr
}

findWords(["Hello", "Tree", "Alaska", "Dad", "Peace", "nvmz"])