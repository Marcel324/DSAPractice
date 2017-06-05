//https://www.hackerrank.com/challenges/camelcase
//This counts how many words are in a string

let input = readLine()!

var wordsInString = 1

for character in input.characters {
    if "\(character)" == "\(character)".uppercased() {
        wordsInString += 1
    }
}

print(wordsInString)