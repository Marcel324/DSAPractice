//This function returns a string with the more frequent characters ahead of the string.

func frequencySort(_ s: String) -> String {
    var countDict: [Character: Int] = [:]
    for c in s.characters {
        countDict[c] = (countDict[c] ?? 0) + 1
    }
    var countArr: [(char: Character, count: Int)] = []
    
    for (key, value) in countDict {
        countArr.append((key, value))
    }
    
    countArr = countArr.sorted(by: { $0.count > $1.count})
    var outputString = ""
    for char in countArr {
     outputString += String(repeating: "\(char.char)", count: char.count)
    }
    return outputString
}
